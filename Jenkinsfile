pipeline {
    agent any

    tools {
        hudson.plugins.sonar.SonarQubePublisher.DescriptorImpl name: 'sonarqube'
    }
    
    stages {
        stage('Checkout & Build') {
            steps {
                git(credentialsId: 'YOUR_GIT_CREDENTIALS_ID', url: 'https://github.com/dakkani/hiring-app.git', branch: 'main')
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv(installationName: 'sonarqube', credentialsId: 'sonarqube-desc') {
                    sh "sonar-scanner -Dsonar.projectKey=hiring-app -Dsonar.host.url=http://18.215.189.58:9000"
                }
            }
        }
        stage('Quality Check & Deploy') {
            steps {
                waitForQualityGate abortPipeline: true
                echo 'Deploying application...'
                echo 'Deployment logic needs configured here.'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}

