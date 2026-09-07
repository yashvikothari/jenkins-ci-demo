pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building application...'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Validation') {
            steps {
                echo 'Running additional validation...'

                sh '''
                    echo "Checking required files..."

                    test -f app.txt
                    test -f build.sh
                    test -f test.sh

                    echo "All required files are present."
                    echo "Validation successful."
                '''
            }
        }
    }

    post {
        success {
            echo 'CI Pipeline completed successfully!'
        }

        failure {
            echo 'CI Pipeline failed. Check Console Output.'
        }
    }
}
