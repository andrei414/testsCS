pipeline {
    agent any
    options {
        disableConcurrentBuilds(2)
    }
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
                           build(job: 'pipelines/testCS')
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
        stage('deploy'){
            steps{
                sh 'echo "deploy"'
            }
        }

    }
    post {
        aborted {
            echo "pipeline has been aborted"
        }
    }
}