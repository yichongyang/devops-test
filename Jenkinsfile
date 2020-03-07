pipeline {
    agent any
    environment{
        CONTAINER_COUNT = 3
    }
    stages{
        stage('Build Node Docker Image'){
            steps{
                echo 'Building the node app docker image ...'
                bat 'docker build . -t yyang/node-app'
            }
        }
        stage('Launch Node Docker Containers'){
            steps{
                echo 'Launching the node app docker containers ...'
                bat 'startNodeApps.bat ${CONTAINER_COUNT}'
            }
        }
    }
}

/*
def getImageTag(){
    def imageTag = bat script: 'git rev-parse HEAD', returnStdout: true
    return imageTag
}
*/