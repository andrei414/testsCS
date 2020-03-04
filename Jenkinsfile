
pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'error\' *.txt')) {
                        sh "exit 1"
                    }
                }
            }
        }
    }
}