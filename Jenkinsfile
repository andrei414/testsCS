def runShell(String command){
    def responseCode = sh returnStatus: true, script: "${command} &> file.txt"
    def output =  readFile(file: "file.txt")
return (output != "")
}
pipeline {
    agent any
    stages {
        stage('check shellcheck') {
            steps {
                script {
                    if (runShell('grep \'error\'')) {
                        echo "exista erroare"
                    }
                }
            }
        }
    }
}