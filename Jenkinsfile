FILE="file.txt"
STRING="error"


pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh './check.sh'
            }
        }
    }
}
