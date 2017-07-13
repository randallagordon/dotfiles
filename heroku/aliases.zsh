alias heroku-redeploy="git commit --allow-empty -m 'Just poking Heroku...' && git push heroku master && git reset HEAD~ && git push -f heroku master"
