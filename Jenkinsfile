pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if ("$file.txt".contains("error")){
                        sh "exit 1"
                    }
                }
            }
        }
    }
}