FILE="file.txt"
STRING="\berror\b"

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh """
                if  grep -w "$STRING" "$FILE" ; then
                    exit 1 ;
                fi
                """
            }
        }
    }
}
