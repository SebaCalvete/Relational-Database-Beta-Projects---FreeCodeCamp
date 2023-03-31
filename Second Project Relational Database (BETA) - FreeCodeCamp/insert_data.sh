#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo -e "~ Insert Data - BASH ~\n"

# Delete all data from tables
echo "$($PSQL "TRUNCATE TABLE games, teams;")">/dev/null

echo -e "~ Data from tables deleted ~\n"
echo -e "~ Adding teams... ~\n"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # ADD TEAMS
  VERIFY_WINNER_TEAM="$($PSQL "SELECT name FROM teams WHERE name='$WINNER';")"
  VERIFY_OPPONENT_TEAM="$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';")"

  if [[ $VERIFY_WINNER_TEAM == "" && $WINNER != "winner" ]]
  then
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")">/dev/null
    echo "$WINNER added"
  fi

  if [[ $VERIFY_OPPONENT_TEAM == "" && $OPPONENT != "opponent" ]]
  then
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")">/dev/null
    echo "$OPPONENT added"
  fi
done

echo -e "\n~ Adding games... ~\n"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # ADD GAME
  WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

  if [[ $WINNER_TEAM_ID != "" && $OPPONENT_TEAM_ID != "" ]]
  then
    echo "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS);")">/dev/null
    echo "$WINNER vs $OPPONENT added"
  fi
done