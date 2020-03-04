FILE="file.txt"
STRING="-error"
BRANCH="$(git branch)"

pipeline {
    agent any
    stages {
        stage('check branch') {
            steps {
                sh """
                if [[ "$BRANCH" != "master" ]]; then
                    exit 1;
                fi
                """
            }
        }
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
