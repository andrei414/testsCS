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
                        build(job: 'test')
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
