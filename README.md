# Containerization DevOps Test  

These are some basic sample files used to test the CI/CD pipeline for containerized applications on a Windows localhost.

## Installation

Download and Install [Docker on Windows] (https://docs.docker.com/docker-for-windows/install/)
Download and Install [Jenkins on Windows] (https://jenkins.io/download/thank-you-downloading-windows-installer-stable)

## Sample Files

1) Node application files: 
   myTestServer.js
   package.json

2) Building Node application image:
   Dockerfile	

3) Jenkins CI/CD Pipeline:
   Jenkinsfile

4) Scripts execution staged in Jenkins CI/CD:
   buildNodeAppImage.bat
   startNodeApps.bat   

## Launch and Configure Jenkins Pipeline

1) Use or clone this git repo
2) Launch Jenkins on the Windows localhost 
3) Create a Jenkins pipeline job that polls SCM with the git repo and a branch
4) Configure the Poll SCM schedule (e.g., ***** for every minute)
 
## Testing 
1) Change something in myTestServer.js and push the change to the remote git repo
2) Change CONTAINER_COUNT in Jenkinsfile and push the change to the remote git repo

These tests will automatically trigger the rebuilding of the Node application Docker image and re-deploy the new number of Docker containers on your Windows localhost. 
