pipeline {
    agent any

    tools {
        // Ensure SonarQube Scanner is installed.  You might need to configure this in Jenkins.
        def sonarQubeScanner = tool 'SonarQube Scanner' // Define SonarQube Scanner tool
    }
    
    stages {
        stage('Checkout') {
            steps {
                git(
                    credentialsId: 'YOUR_GIT_CREDENTIALS_ID',
                    url: 'https://github.com/dakkani/hiring-app.git',
                    branch: 'main'
                )
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv(serverId: 'sonarqube') {  // Use the SonarQube server ID "sonarqube"
                    sh "${sonarQubeScanner}/bin/sonar-scanner -Dsonar.projectKey=hiring-app -Dsonar.host.url=http://18.215.189.58:9000 -Dsonar.login=sonarqube-token-name"
                }
            }
        }
        stage('Test') {
            steps {
               sh 'mvn test'
            }
        }
        stage('Package') {
            steps{
                sh 'mvn package'
            }

        }
        stage('Quality Gate') {
            steps {
                // Waits for SonarQube to finish processing and checks the Quality Gate status.
                waitForQualityGate abortPipeline: true
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                echo 'Deployment logic needs to be configured here.'
            }
        }
    }
    post {
        always {
            cleanWs() // Cleans the workspace after the pipeline execution
        }
    }
}

