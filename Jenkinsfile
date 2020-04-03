// yourJob
// with try/catch block

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

// Checking JOB

def pJob;

pipeline {
    agent any
    stages {
        // Run job with inheriting variable from build
        stage("Inheriting job") {
            steps {
                script {
                    pJob = build(job: "yourJob", parameters: [
                            [$class: 'StringParameterValue', name: 'stageOne', value: 'FAILURE'],
                            [$class: 'StringParameterValue', name: 'stageTwo', value: 'FAILURE'],
                            [$class: 'StringParameterValue', name: 'stageThree', value: 'FAILURE']
                            ], propagate: false)
                    if (pJob.result == 'FAILURE') {
                    error("${pJob.projectName} FAILED")
                    }
                }
            }
        }
        // Wait for fix, and re run job 
        stage ('Wait for fix') {
            timeout(time: 24, unit: 'HOURS') {
            input "Ready to rerun?"
            }
        }
        // Re run job after changes in code
        stage("Re-run Job") {
            steps {
                script {
                    build(
                        job: "yourJob",
                        parameters: [
                            [$class: 'StringParameterValue',name: 'stageOne',value: pJob.buildVariables.stageOneStatus ],
                            [$class: 'StringParameterValue',name: 'stageTwo',value: pJob.buildVariables.stageTwoStatus ],
                            [$class: 'StringParameterValue',name: 'stageThree',value: pJob.buildVariables.stageThreeStatus ]

                        ]
                    )
                }
            }
        }
    }
}