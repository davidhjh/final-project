pipeline {
    agent any
    stages {
        stage('David - Build Docker Image') {
            steps {
                sh 'docker build -t davidhjh/final-project:latest .'
            }
        }
        stage('David - Login to Dockerhub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                }
            }
        }
        stage('David - Push image to Dockerhub') {
            steps {
                sh 'docker push davidhjh/final-project:latest'
            }
        }
    }
}
