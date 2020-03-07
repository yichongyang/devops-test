pipeline {
    agent any
    environment{
        IMAGE_TAG = getImageTag()
    }
    stages{
        stage('Build Node Docker Image'){
            steps{
                bat "docker build . -t yyang/node-app:${IMAGE_TAG}"
            }
        }
    }
}

def getImageTag(){
    def imageTag = bat script: 'git rev-parse HEAD', returnStdout: true
    return imageTag
}