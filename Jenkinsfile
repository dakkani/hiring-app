pipeline {
    agent any

    stages {
        stage('Checkout & Build') {
            steps {
                git url: 'https://github.com/dakkani/hiring-app.git', branch: 'main'
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
                sh 'echo "Deploying application..."'
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
