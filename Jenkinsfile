pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    '''
                    #!/bin/bash
                    echo "hello world"
                    '''
                    }
                }
            }
        }
    }
}