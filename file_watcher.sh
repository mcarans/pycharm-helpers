#!/usr/bin/env bash

seconds=20
tmppid=$(dirname $(mktemp -u))/file_watcher_pid
tmpfile=$(dirname $(mktemp -u))/file_watcher

runTools () {
    if [ -n "$1" ]; then
        echo "Running tools on $1 now";             
        flynt $1;
        shed --refactor $1;
    fi
}

runWithDelay () {
    if [ -n "$1" ]; then
        procid=$BASHPID
        echo "Running tools on $1 in $seconds seconds. pid is $procid";    
        echo $procid > $tmppid;
        echo $file > $tmpfile;
        sleep $seconds;
        runTools $1;
        echo "Deleting inner $tmppid";
        rm $tmppid;
        echo "Deleting inner $tmpfile";
        rm $tmpfile;
    fi
}

if [ -n "$1" ]; then
    file="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")";
    if [ -f $tmppid ]; then
        read processid < $tmppid;
        echo "Killing $processid";
        kill -- $processid;
        echo "Deleting outer $tmppid";
        rm $tmppid;
        read filetoclean < $tmpfile;
        echo "Deleting outer $tmpfile";
        rm $tmpfile;
        if [ $filetoclean != $file ]; then
            runTools $filetoclean;
        fi
    fi
    runWithDelay $file &
else
    echo "No file argument supplied!";
fi
