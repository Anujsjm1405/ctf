LEVEL=$1
FLAG=$2
STATUS_FILE="level1_completed.txt"

if [ "$LEVEL" == "1" ]; then
    if [ "$FLAG" == "FLAG{basic_cat_command}" ]; then
        echo "Correct! Now go to level2 directory."
        touch $STATUS_FILE
    else
        echo "Wrong flag."
    fi

elif [ "$LEVEL" == "2" ]; then
    if [ ! -f $STATUS_FILE ]; then
        echo "You need to complete level 1 first."
    else
        if [ "$FLAG" == "FLAG{you_found_the_hidden_file}" ]; then
            echo "Congratulations! You completed all levels!"
            
        else
            echo "Wrong flag."
        fi
    fi

else
    echo "Use: ./start.sh <level_number> <flag>"
fi
