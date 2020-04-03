pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                script {
                    input message: 'Proceed?', ok: 'Yes', submitter: 'admin'
                }
                echo "helloworld"
            }
            post {
                aborted{
                    script{
                        retry(1) {
                           input "Retry the job ?"
                           build 'test'
                        }
                    }
                }
                success {
                    script{
                        sh 'echo "continue"'
                    }      
                }
            }            
        }
    }
    post {
        aborted {
            echo "pipeline has been aborted"
        }
    }
}