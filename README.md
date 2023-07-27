# Bash_Scripts_Automation
All the bash scripts that i learn during my DevOps journey is committed here in this repo.

--For Automated_backup.sh--

This script allows you to automate your backup process with ease

📁 Easy to Use: The script comes with a straightforward command-line interface, making it accessible to everyone, regardless of their technical expertise.

📆 Automatic Timestamp: Each backup is timestamped with the date and time, so you can keep track of multiple backups effortlessly.

🚀 Fast and Efficient: By utilizing the power of tar and gzip, the script efficiently compresses your data, saving both time and disk space.

💼 Versatile: Whether you want to back up your personal files or your entire project directory, this script handles it all.

🔒 Error Handling: The script is equipped with a set of safeguards to prevent any errors during the backup process, ensuring a smooth experience.

1️⃣ Give it the necessary permissions using "chmod +x backup_script.sh". 

2️⃣ Specify the Directories: Run the script by providing the source directory and the backup directory as arguments. 

3️⃣ Done! The script will create a compressed tarball with your files, ensuring your data is secure.


--For AddUsers.sh--

This script adds users to linux machine

- Give it the necessary permissions using "chmod +x backup_script.sh".
  
- Add as many as you want which is implemented by using while loop.
  
- reads the password silently on terminal
  
- uses add_user() function to add the users
  
- before adding the function checks whether the user has already been added or not
  
- exit the script anytime by pressing "y" against the correct prompt
