pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                script {
                    input message: 'Proceed?', ok: 'Yes', submitter: 'admin,test'
                }
                echo "helloworld"
            }            
        }
        stage('deploy'){
            steps{
                sh 'echo "deploy"'
            }
        }
    }
}