FILE="file.txt"
STRING="-error"
BRANCH=$(git branch | sed -nr 's/\*\s(.*)/\1/p')

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
                if [ -z $BRANCH ] || [ $BRANCH != "master" ]; then
                    exit 1
                fi
                """
            }
        }
    }
}
