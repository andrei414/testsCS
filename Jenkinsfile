FILE="file.txt"
STRING="error"


pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh 'chmod +x check.sh'
                sh './check.sh'
            }
        }
    }
}
