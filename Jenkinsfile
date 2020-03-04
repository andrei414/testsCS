FILE="file.txt"
STRING="-error"
final MASTER_BRANCH_NAME = 'master'


pipeline {
    agent any
    stages {
        stage('check branch'){
            steps{
                sh "git branch"
                sh "git checkout master"
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
