#!/bin/bash

# Scripts to open any current projects using VS Code and any google chrome windows
# must be configured beforehand

# Enter paths to projects here
PROJECT1_PATH="<PATH/TO/FOLDER>"
PROJECT2_PATH="<PATH/TO/FOLDER>"
PROJECT2_PATH="<PATH/TO/FOLDER>"

open() {
    read -p "What do you want to work on: " ANSWER
    case "$ANSWER" in
        <project1>)
            echo "[+] opening Project 1..."
            code $PROJECT1_PATH
            /usr/bin/open -a "Google Chrome" <URL>
            /usr/bin/open -a "Google Chrome" <URL>
            exit 0
            ;;
        <project1>)
            echo "[+] opening Project 2..."
            code $PROJECT2_PATH
            python3 OpenBookmarks.py # reference OpenBookmarks.py, this script is meant to open bookmarks from google chrome
            exit 0
            ;;
        <project2>)
            echo "[+] opening Project 3..."
            code $PROJECT2_PATH
            /usr/bin/open -a "Google Chrome" <URL>
            /usr/bin/open -a "Google Chrome" <URL>
            exit 0
            ;;
        *)
            echo "Usage: project1|project2|project3"; exit 0
        esac
}

open
