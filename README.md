# Devops-Tasks

Description:


1.To run a attached shell script at daily midnight using cron

  chmod +x /path/to/backup.sh      #make the file is excecutable
  crontab -e                       #open crontab file in default editor
  0 0 * * * /path/to/backup.sh     #run a cronjob at daily midnight
  save and exit your file
  crontab -l                      #verify the cronjob is setup
  
  
