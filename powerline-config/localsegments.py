# -*- coding: utf-8 -*-
from __future__ import absolute_import


import os
import subprocess
import re


from powerline.theme import requires_segment_info


def get_git_status():
    has_pending_commits = True
    has_untracked_files = False
    detached_head = False
    origin_position = ""
    current_branch = ''
    output = subprocess.Popen(['git', 'status', '-unormal'], stdout=subprocess.PIPE).communicate()[0]
    for line in output.split('\n'):
        origin_status = re.findall("Your branch is (ahead|behind).*?(\d+) comm", line)
        if len(origin_status) > 0:
            origin_position = " %d" % int(origin_status[0][1])
            if origin_status[0][0] == 'behind':
                origin_position += '⇣'
            if origin_status[0][0] == 'ahead':
                origin_position += '⇡'

        if line.find('nothing to commit') >= 0:
            has_pending_commits = False
        if line.find('Untracked files') >= 0:
            has_untracked_files = True
        if line.find('Not currently on any branch') >= 0:
            detached_head = True
        if line.find('On branch') >= 0:
            current_branch = re.findall('On branch ([^ ]+)', line)[0]
    return has_pending_commits, has_untracked_files, origin_position, detached_head, current_branch


@requires_segment_info
def branch(pl, segment_info):
    #cmd = "git branch 2> /dev/null | grep -e '\\*'"
    p1 = subprocess.Popen(['git', 'branch'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p2 = subprocess.Popen(['grep', '-e', '\\*'], stdin=p1.stdout, stdout=subprocess.PIPE)
    output = p2.communicate()[0].strip()
    if len(output) == 0:
        return None

    has_pending_commits, has_untracked_files, origin_position, detached_head, current_branch = get_git_status()

    if len(current_branch) > 0:
        branch = current_branch
    elif detached_head:
        branch = subprocess.Popen(['git', 'describe', '--all', '--contains', '--abbrev=4', 'HEAD'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        branch = '((' + branch.communicate()[0].strip() + '))'
    else:
        branch = 'master'

    branch += origin_position

    if has_untracked_files:
        branch += ' +'

    scol = ['branch']

    scol.insert(0, 'branch_dirty' if has_pending_commits else 'branch_clean')

    if len(current_branch) > 0:
        return [{
            'contents': branch,
            'highlight_group': scol,
        }]
    else:
        return None


@requires_segment_info
def cwd(pl, segment_info, dir_shorten_len=None, dir_limit_depth=None, use_path_separator=False):
        try:
                cwd = segment_info['getcwd']()
        except OSError as e:
                if e.errno == 2:
                        # user most probably deleted the directory
                        # this happens when removing files from Mercurial repos for example
                        pl.warn('Current directory not found')
                        cwd = "[not found]"
                else:
                        raise
        home = segment_info['home']
        if home:
                cwd = re.sub('^' + re.escape(home), '~', cwd, 1)
        cwd_split = cwd.split(os.sep)
        cwd_split_len = len(cwd_split)
        if dir_limit_depth and cwd_split_len > dir_limit_depth + 1:
                del(cwd_split[0:-dir_limit_depth])
                cwd_split.insert(0, '⋯')
        cwd = [i[0:dir_shorten_len] if dir_shorten_len and i else i for i in cwd_split[:-1]] + [cwd_split[-1]]
        ret = []
        if not cwd[0]:
                cwd[0] = '/'
        draw_inner_divider = not use_path_separator
        for part in cwd:
                if not part:
                        continue
                if use_path_separator:
                        part += os.sep
                ret.append({
                        'contents': part,
                        'divider_highlight_group': 'cwd:divider',
                        'draw_inner_divider': draw_inner_divider,
                })
        ret[-1]['highlight_group'] = ['cwd:current_folder', 'cwd']
        if use_path_separator:
                ret[-1]['contents'] = ret[-1]['contents'][:-1]

        return ret


def mode(pl):
    ret = [{}]
    ret[0]['contents'] = ''

    vimode = os.getenv('VIMODE', '')
    if vimode.startswith("insert"):
        ret[0]['highlight_group'] = 'mode_insert'
    elif vimode.startswith("command"):
        ret[0]['highlight_group'] = 'mode_command'

    return ret


def bgjobs(pl):
    jobs = os.getenv('BGJOBS', '')
    if(jobs == "0"):
        return None
    return jobs


def node(pl):
    version = subprocess.Popen('node --version', stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE,
                               shell=True).stdout.read().strip()

    return version
