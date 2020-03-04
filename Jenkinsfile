FILE="file.txt"
STRING="-error"


pipeline {
    agent any
    stages {
        stage('check shellcheck') {
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
