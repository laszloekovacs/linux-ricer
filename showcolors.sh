#!/bin/bash

# ANSI escape codes for text attributes
RESET='\e[0m'
BOLD='\e[1m'

# ANSI color codes
for FG in {30..37}; do
    for BG in {40..47}; do
        # Print the color combination (Foreground on Background)
        echo -e "${BOLD}\e[${FG};${BG}m FG:${FG} BG:${BG} ${RESET}"
    done
done

# Print additional bright colors (if supported by terminal)
echo -e "\n${BOLD}Bright Colors (Foreground)${RESET}"
for FG in {90..97}; do
    echo -e "${BOLD}\e[${FG}m FG:${FG} ${RESET}"
done

echo -e "\n${BOLD}Bright Colors (Background)${RESET}"
for BG in {100..107}; do
    echo -e "${BOLD}\e[${BG}m BG:${BG} ${RESET}"
done
