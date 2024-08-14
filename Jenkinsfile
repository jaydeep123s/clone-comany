pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                // Clone the repository from GitHub
                git branch: 'main', url: 'https://github.com/jaydeep123s/clone-comany.git'
            }
        }

        stage('Build') {
            steps {
                // Make the build script executable and run it
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                // Make the test script executable and run it
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo 'Starting deployment...'
                    // Use the existing SSH credentials for deployment
                    withCredentials([sshUserPrivateKey(credentialsId: '34.213.162.58', keyFileVariable: 'SSH_KEY', usernameVariable: 'USER')]) {
                        sh 'chmod +x deploy.sh'
                        echo 'Running SCP...'
                        sh "scp -i ${SSH_KEY} -o StrictHostKeyChecking=no deploy.sh ${USER}@34.213.162.58:/home/${USER}/deploy"
                        echo 'Running SSH...'
                        sh "ssh -i ${SSH_KEY} -o StrictHostKeyChecking=no ${USER}@34.213.162.58 'cd /home/${USER}/deploy && ./deploy.sh'"
                    }
                }
            }
        }
    }

    post {
        always {
            // Clean workspace after the pipeline run
            cleanWs()
        }
    }
}
