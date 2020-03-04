final file = 'file.txt'

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if ("$file".contains("error")){
                        sh "exit 1"
                    }
                }
            }
        }
    }
}