pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                sh 'javac HelloWorld.java'
            }
        }

        stage('Execute') {
            steps {
                sh 'java HelloWorld'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t hello-world-java .'
            }
        }

        stage('Docker Tag') {
            steps {
                sh 'docker tag hello-world-java anurupkaran/hello-world-java:latest'
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    sh 'docker push anurupkaran/hello-world-java:latest'
                }
            }
        }
    }
}

