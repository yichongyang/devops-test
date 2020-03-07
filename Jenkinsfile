pipeline {
    agent any
    environment{
        CONTAINER_COUNT = 1
    }
    stages{
        stage('Build Node Docker Image'){
            steps{
                bat 'docker build . -t yyang/node-app'
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