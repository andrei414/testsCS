def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${exit 1} &> tmp.txt"
    def output =  readFile(file: "tmp.txt")
    return (output != "")
}

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'error\' fieleexample.txt')) {
                        echo 'contains error'
                        sh 'exit 1'
                    }
                }
            }
        }
    }
}