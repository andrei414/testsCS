FILE="file.txt"
STRING="\b-error"

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh """
                if  grep -Fx "$STRING" "$FILE" ; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
