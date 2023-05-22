pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Clean and install the project
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Start API') {
            steps {
                // Change directory to target
                dir('target/') {
                    // Run the jar in background and set port to 8081
                    sh 'java -jar blogapi-0.0.1-SNAPSHOT.jar  &'
                }
            }
        }
        stage('Wait') {
            steps {
                // Wait for 30 seconds before running the load test
                sh 'sleep 30'
            }
        }
        stage('Load test') {
            steps {
                 sh 'mvn test'
            }
        }

    }
}

