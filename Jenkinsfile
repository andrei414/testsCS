def stageOneStatus;
def stageTwoStatus;
def stageThreeStatus;

pipeline {
    agent any
    stages {
        stage("STAGE 1") {
            // For initial run every stage
            when { expression { params.stageOne == "FAILURE" } }
            steps {
                sh 'echo "hello"'
                script {
                    try {
                        // make thing
                    } catch (Exception e) {
                        stageOneStatus = "FAILURE";
                    }
                }
            }
        }

        stage("STAGE 2") {
            when { expression { params.stageTwo == "FAILURE" } }
            steps {
                script {
                    try {
                        // make thing
                    } catch (Exception e) {
                        stageTwoStatus = "FAILURE";
                    }
                }
            }
        }

        stage("STAGE 3") {
            when { expression { params.stageThree == "FAILURE" } }
            steps {
                script {
                    try {
                        // make thing
                    } catch (Exception e) {
                        stageThreeStatus = "FAILURE";
                    }
                }
            }
        }
    }
}