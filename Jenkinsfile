pipeline {
    agent {
        label 'windows'
    }

    tools {
        maven 'apache-maven-3.8.1'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/msrinivascharan/docker-hello-world-spring-boot.git'
            }
        }
        stage('Build app') {
            steps {
                bat(script: 'mvn clean')
            }
        }
        stage('Unit test app') {
            steps {
                bat(script: 'mvn test')
            }
        }
        stage('Package app') {
            steps {
                bat(script: 'mvn package')
            }
        }

        stage('Docker image app') {
            steps {
                docker build -t msrinivascharan/docker-hello-world-spring-boot:$env:BUILD_ID .
            }
        }
    }
}
