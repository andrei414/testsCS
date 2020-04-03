pipeline {
	agent any 
	stages{
		stage('build') {
		    steps {
		        sh  'echo "deploy acc"'
		        script {
		          timeout(time: 1, unit: 'MINUTES') 
		          {
		            input message: 'test approve', submitter: 'test'
		          }
		        }
		    }
		}

        stage ('check'){
            when {expression { params.build == "REJECTED" }}
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

