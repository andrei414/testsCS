def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${command} &> tmp.txt"
    def output =  readFile(file: "fieleexample.txt")
    return (output != "fila contine error")
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