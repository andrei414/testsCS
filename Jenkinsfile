FILE="file.txt"
STRING="-error"


pipeline {
    agent any
    stages {
        stage('check branch'){
            sh "git branch"
        }
        stage('check shellcheck') {
            when {
                anyOf {branch 'master'}
            }
            steps {
                sh """
                if  grep -Fxe "$STRING" "$FILE" ; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
