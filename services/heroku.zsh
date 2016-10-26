alias hk="heroku"
alias pt='heroku addons:open papertrail $@'
alias hpgb='curl -o pg-backup-`date +"%Y%m%d_%H%M%S"` `heroku pg:backups public-url`'
