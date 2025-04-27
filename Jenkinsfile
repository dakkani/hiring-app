pipeline {
    agent any

    tools {
        // Use the correct tool type for SonarScanner
        sonarRunner 'sonar-scanner'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh 'sonar-scanner -Dsonar.projectKey=hiring-app -Dsonar.host.url=http://18.215.189.58:9000'
                }
            }
        }
        
        stage('Quality Check & Deploy') {
            steps {
                waitForQualityGate abortPipeline: true
                echo 'Deploying application...'
                // Add your deployment commands here
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
