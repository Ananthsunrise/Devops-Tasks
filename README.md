# Devops-Tasks

**Description**: In this I completed three tasks such as shell sript for backup a specific directory, simple nodejs web application using docker and infrastructure provisioning using terraform. 


**1.To run a attached shell script at daily midnight using cron**

  chmod +x /path/to/backup.sh      #make the file is excecutable
  
  crontab -e                       #open crontab file in default editor
  
  0 0 * * * /path/to/backup.sh     #run a cronjob at daily midnight
  
  save and exit your file
  
  crontab -l                      #verify the cronjob is setup




**2.To run a attached Dockerfile**

  docker build -t my-nodejs-app              #this will create a docker image named my-nodejs-app
  docker run -p 8080:8080 my-nodejs-app      #this will run application in a container 8080 port
  http://localhost:8080                       #you can view application using this link in your localhost browser

**3.To run the terraform**

  terraform init 
  terraform plan -var="region=yourregion-name"  # for ex: us-east-1
                 -var="instance_ami=your-ami-id"
                 -var="s3_bucket=my-terraform-state-bucket"

   terraform apply -var="region=yourregion-name"  # for ex: us-east-1
                 -var="instance_ami=your-ami-id"
                 -var="s3_bucket=my-terraform-state-bucket"
  
  
