def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${command} &> fieleexample.txt"
    def output =  readFile(file: "fieleexample.txt")
    return (output != "")
}

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'err\' fieleexample.txt')) {
                        sh "exit 1"
                    }
                }
            }
        }
    }
}