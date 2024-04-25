#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1))
# echo "$SECRET_NUMBER"


echo -e "\nEnter your username:"
read USERNAME

# Get the number of characters
USERNAME_CHARS=$(echo $USERNAME | wc -c)
while [[  $USERNAME_CHARS -gt 22  ]]
  do
    echo -e "\nEnter your username:"
    read USERNAME
    # Get the number of characters
    USERNAME_CHARS=$(echo $USERNAME | wc -c)

  done

RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
# If returning user does not exist
if [[  -z $RETURNING_USER  ]]
then
  INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Grab user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

TRIES=1

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

while [[  $GUESS -ne $SECRET_NUMBER  ]]
  do

    # Check if input is valid
     # if the guess is not an integer
    if [[  ! $GUESS =~ ^[0-9]+$  ]]
      then
        echo -e "\nThat is not an integer, guess again:"
        read GUESS
        TRIES=$(expr $TRIES + 1)
    else
    
      # if the guess is greater than the secret number
      if [[  $GUESS -gt $SECRET_NUMBER  ]]
      then
        echo -e "\nIt's lower than that, guess again:"
        read GUESS
        TRIES=$(expr $TRIES + 1)

      # if the guess is less than the secret number
      elif [[  $GUESS -lt $SECRET_NUMBER  ]]
      then
        echo -e "\nIt's higher than that, guess again:"
        read GUESS
        TRIES=$(expr $TRIES + 1)

    fi
  fi
  done

# Insert Data from Game
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id,guesses) VALUES ($USER_ID,$TRIES)")
echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
