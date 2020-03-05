FILE="test1/test2/file.txt"
STRING="-error"


pipeline {
    agent any
    stages {
        stage('check branch'){
            steps{
                sh "git branch"
                sh "env"
            }
        }
        stage('check shellcheck') {
            when {
                anyOf {branch 'master'}
            }
            steps {
                sh """
                if [[$STRING == *"-error"*]]; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
