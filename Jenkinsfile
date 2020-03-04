
pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    def runShell(String command){
                        def responseCode = sh returnStatus: true, script: "${command} &> tmp.txt"
                        def output =  readFile(file: "tmp.txt")
                    return (output != "")
                    }
                    if (runShell('grep \'error\' file.txt')) {
                        sh "exit 1"
                    }
                }
            }
        }
    }
}