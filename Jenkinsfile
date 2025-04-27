pipeline {
    agent any

    tools {
        // Ensure SonarQube Scanner is installed.  You might need to configure this in Jenkins.
        sonarQube name: 'sonarqube' // Corrected tool definition
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
        }root@ideapad:~/omer-app/hiring-app# cat Jenkinsfile 
pipeline {
    agent any

    tools {
        // Ensure SonarQube Scanner is installed.  You might need to configure this in Jenkins.
        sonarQube name: 'sonarqube' // Corrected tool definition
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
                withSonarQubeEnv(credentialsId: 'sonarqube-id') {  // Use credentialsId
                    sh "sonar-scanner -Dsonar.projectKey=hiring-app -Dsonar.host.url=http://18.215.189.58:9000"
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


        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv(credentialsId: 'sonarqube-desc') {  // Use credentialsId
                    sh "sonar-scanner -Dsonar.projectKey=hiring-app -Dsonar.host.url=http://18.215.189.58:9000"
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
