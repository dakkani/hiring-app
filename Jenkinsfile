pipeline {
    agent any  // Use any available agent, or specify a specific agent

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Git repository.  Use credentials if needed.
                git(
                    credentialsId: 'YOUR_GIT_CREDENTIALS_ID', // Replace with your Git credentials ID
                    url: 'https://github.com/dakkani/hiring-app.git',
                    branch: 'main' // Or your desired branch
                )
            }
        }
        stage('Build') {
            steps {
                // Run Maven build
                sh 'mvn clean install -DskipTests'  // Clean, install, and skip tests for faster build
            }
        }
        stage('Test') {
            steps {
               //Run the tests
               sh 'mvn test'
            }
        }
        stage('Package') {
            steps{
                //Package the application
                sh 'mvn package'
            }

        }
        stage('Deploy') {
            steps {
                //  Deploy the application.  This is a placeholder.
                //  You'll need to customize this based on your deployment environment.
                //  For example, you might deploy to a web server, a cloud platform, or a container registry.
                echo 'Deploying application...'
                // Example: Deploy to a local directory (for demonstration purposes only)
                // sh 'cp target/your-application.war /path/to/deployment/directory'
                //  Example: Deploy to Docker (requires Docker plugin)
                //  docker push your-docker-registry/your-image-name:latest
                echo 'Deployment logic needs to be configured here.'
            }
        }
    }
}
