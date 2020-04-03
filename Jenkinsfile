pipeline {
	agent any 
	stages{
		stage('build') {
		    steps {
		        sh  'echo "deploy acc"'
		        script {
		          timeout(time: 10, unit: 'SECONDS') 
		          {
		            input message: 'test approve', submitter: 'test'
		          }
		        }
		    }
		}

        stage ('check'){
            when {expression { params.build == "ABORTED" }}
            steps{
                script{
                    try{
                        build(job: 'check', propagate: false)
                    } catch (Exception e) {
                        stageThreeStatus = "FAILURE";
                    }
                }
            }
        }
		
		stage('deploy') {
		    steps {
	         sh 'echo "hello"'
	        }
	    }
	}
}

