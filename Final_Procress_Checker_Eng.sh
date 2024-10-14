#!/bin/bash

# made by Vedron2
# Function for checking the processes
check_processes() {
  # Count the number of processes with the specified names
  satisfactory_count=$(pgrep -c "FactoryServer-L")
  palworld_count=$(pgrep -c "PalServer-Linux")
  java_based_application_count=$(pgrep -c "java")
  user_count=$(w -h| wc| cut -c7-7)

  # If none of the processes are running, the system is shut down
  if [ $satisfactory_count -eq 0 ] && [ $palworld_count -eq 0 ] && [ $java_based_application_count -eq 0 ] && [ $user_count -eq 0 ]
  then
    echo "Attention! Shutdown in 15 minutes if no instance is still running"
    sleep 15m # fifteen minutes timer

    if [ $satisfactory_count -eq 0 ] && [ $palworld_count -eq 0 ] && [ $java_based_application_count -eq 0 ] && [ $user_count -eq 0 ]
    then
      echo "None of the processes are running. System is shut down..."

      echo "Satisfactory:" $satisfactory_count
      echo "Palworld:" $palworld_count
      echo "Java_based_applications:" $java_based_application_count
      echo "User-Count:" $ssh_counter

      shutdown -h now
    fi

  fi
}

# Loop for regular checks (every 30m)
while true; do
  check_processes
  sleep 30m
done
