pipeline {
    agent any

    tools {
        // Reference the SonarScanner tool you configured in Jenkins
        sonarScanner 'sonar-scanner'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm  // Uses the same SCM checkout that triggered the pipeline
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
                    // The tool name will make sonar-scanner available in PATH
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
