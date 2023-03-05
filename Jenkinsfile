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
                bat(script: git branch: '*/main', url: 'https://github.com/msrinivascharan/docker-hello-world-spring-boot.git')
            }
        }
        stage('Build') {
            steps {
                bat(script: 'mvn clean')
            }
        }
        stage('Test') {
            steps {
                bat(script: 'mvn test')
            }
        }
        stage('Deploy') {
            steps {
                bat(script: 'mvn package')
            }
        }
    }
}
