pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if ("grep 'error' file.txt"){
                        echo "error found"
                    }
                }
            }
        }
    }
}