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
                powershell "docker build -t msrinivascharan/docker-hello-world-spring-boot:${BUILD_NUMBER} ."
            }
        }

        stage('Docker publish image') {
            steps {
                powershell "docker push msrinivascharan/docker-hello-world-spring-boot:${BUILD_NUMBER}"
            }
        }

        stage('Deploy app to K8s cluster') {
            steps {
                powershell "helm upgrade docker-springboot-hw-app  ./dsphwchart --set app.image=msrinivascharan/docker-hello-world-spring-boot:${BUILD_NUMBER}"
            }
        }
    }
}
