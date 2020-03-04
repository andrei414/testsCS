

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if grep -q error "$fieleexample.txt"; then
                     exit 1 # error was found
                    fi
                }
            }
        }
    }
}