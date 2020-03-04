FILE="file.txt"
STRING="-error"
CURRENT_BRANCH="$(git branch)"

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
                if [[ "$CURRENT_BRANCH" -ne "master" ]]; then
                    echo "Aborting script because you are not on the master branch."
                    return;      # I need to abort here!
                fi
                """
            }
        }
    }
}
