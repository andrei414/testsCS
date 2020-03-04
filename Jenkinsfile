FILE="file.txt"
STRING="err"

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh """
                if  grep -q "$STRING" "$FILE" ; then
                    exit 1 ;
                else
                    echo "succes";
                fi
                """
            }
        }
    }
}
