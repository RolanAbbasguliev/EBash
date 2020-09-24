#!/usr/bin/env bash
#PROGRAMM FILE: MyScript
#PROGRAMMER: Abbasguliev Rolan

#safe mode
set -o pipefail

#Correction woring globbing 
shopt -s nullglob

source script_load
script_load

case $1 in
  calc)
    clear
    if [[ -z $5 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi 
 
    calc "$2" "$3" "$4"
    ;;
  search)
    clear
    if [[ -z $4 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi
 
    search "$2" "$3"
    ;;
  reverse)
    clear
    if [[ -z $4 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi 

    reverse "$2" "$3"
    ;;
  srlen)
    clear
    if [[ -z $3 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi
   
    
    strlen "$2" 
    ;;
  log) 
    clear
    if [[ -z $2 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi 
 
    log
    ;;
  exit)
    clear
    exit_code "$2"
    ;;
  help)
    clear
    if [[ -z $2 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2 
    fi 
 
    help_me
    ;; 
  interactive) 
    clear
    if [[ -z $2 ]]; then
      true
    else
      echo -e "${RED}TOO MUCH ARGUMENTS!${NC}" 1>&2
    fi 
 
    interactive
    ;; 
  *)
    clear
    help_me
    echo -e "${RED} YOU TYPED FUNCTION DOESN'T EXIST ${NC}" 1>&2
    ;;
esac

