pipeline {
    agent any

    environment {
        DEPLOY_ENV = "staging"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Cloning repository..."
                git branch: 'main', url: 'https://github.com/babunaikl/narasimha.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building the project..."
                sh 'echo "Build step - replace with real build command"'
            }
        }

        stage('Deploy') {
            steps {
                echo "Running deploy script..."
                sh '''
                    chmod +x scripts/deploy.sh
                    ./scripts/deploy.sh ${DEPLOY_ENV}
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Deployment succeeded!'
        }
        failure {
            echo '❌ Deployment failed!'
        }
    }
}
