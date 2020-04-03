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

                        }
                        options {
                          // TODO: Fix - some tests are flaky - sometimes pass, sometimes not
                          retry(3)
                        }
                        steps {
                          runCompose( 'test' )
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