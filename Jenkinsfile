string="version 2.2.1 -error"
snapshot="error"

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
                string="version 2.2.1 -error"
                if [[ $string =~ $snapshot ]]; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
