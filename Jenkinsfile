pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                sh """
                #!/bin/bash
                echo 'hello'
                """                }
            }
        }
    }
}