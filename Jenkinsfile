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
                bat 'git clone https://github.com/msrinivascharan/docker-hello-world-spring-boot.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                bat 'mvn package'
            }
        }
    }
}
