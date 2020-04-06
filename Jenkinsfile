pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                script {
                    input message: 'Proceed?', ok: 'Yes', submitter: 'admin'
                    input message: 'Proceed?', ok: 'Yes', submitter: 'admin'
                }
                echo "helloworld"
            }
            post {
                aborted{
                    script{
                        retry(1) {
                           input "Retry the job ?"
                           build(job: 'pipelines/testCS', wait: false)
                        }
                    }
                }
            }            
        }
        stage('deploy'){
            steps{
                sh 'echo "deploy"'
            }
        }
    }
}