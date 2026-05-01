pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // This will use the job’s SCM configuration
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

        stage('Docker Run') {
            steps {
                sh 'docker run --rm hello-world-java'
            }
        }
    }
}




