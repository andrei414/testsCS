def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${command} &> tmp.txt"
    def output =  readFile(file: "fileexample.txt")
    return (output != "")
}

pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'error\' file_to_parse.txt')) {
                        sh "exit 1"
                    }
                }
            }
        }
    }
}