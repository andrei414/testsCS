FILE="file.txt"
STRING="\b-error\b"

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
