if [ "$(uname -s)" = "Darwin" ]
then;
  
  [ -s "/Users/randall/.jabba/jabba.sh" ] && source "/Users/randall/.jabba/jabba.sh"

  jabba use openjdk@1.12.0
fi
