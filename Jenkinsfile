def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${command} &> tmp.txt"
    def output =  readFile(file: "error")
    return (output != "")
}

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'error\' fieleexample.txt')) {
                        sh "exit 1"
                    }
                }
            }
        }
    }
}