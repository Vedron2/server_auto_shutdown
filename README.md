# server_auto_shutdown

This Bash script monitors the status of specific processes on a Linux system. It checks for the presence of processes named "FactoryServer-L", "PalServer-Linux", and "java". Additionally, it monitors the number of logged-in users.

If no processes are running and no users are logged in, the script displays a warning message and waits for 15 minutes. If the processes remain inactive after 15 minutes, the script issues a shutdown command.

# Purpose:
This script is designed to monitor the health of a Linux system and initiate a shutdown if no critical processes are running and there are no active users.

# Usage:
- Save the script as a Bash file (e.g., process_monitor.sh).
- Make the script executable: `chmod +x process_monitor.sh`
- Run the script: `./process_monitor.sh`

# Configuration:
- Process names: Adjust the process names ("FactoryServer-L", "PalServer-Linux", "java") to match the specific processes you want to monitor.
- Shutdown delay: Modify the sleep 15m command to adjust the waiting period before shutdown.
- User count: The script checks the number of logged-in users using `w -h`. You can customize this if needed.

# Notes:
Ensure that the script has the necessary permissions to execute system commands like shutdown.
Consider adding error handling and logging to improve the script's robustness.
This script is a basic example. You may need to adapt it to your specific requirements and environment.
