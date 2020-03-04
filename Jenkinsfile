FILE="test1/test2/file.txt"
STRING="-error"


pipeline {
    agent any
    stages {
        stage('check branch'){
            steps{
                sh "git branch"
            }
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
