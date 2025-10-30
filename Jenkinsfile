pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t myapp1 .'
            }
        }
        stage('Run') {
            steps {
                echo 'Running Docker container...'
                bat '''
                docker rm -f mycontainer1 || exit 0
                docker run -d --name mycontainer1 myapp1
                '''
            }
        }
    }
    post {
        success {
            echo 'Pipeline build successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
