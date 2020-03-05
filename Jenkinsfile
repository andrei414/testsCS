string="version 2.2.1 -error"


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
                if [[ $string == *"error"* ]]; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
