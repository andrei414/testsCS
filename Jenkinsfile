pipeline {
	agent any 
	stages{
		stage('build') {
		    steps {
		        sh  'echo "deploy acc"'
		        script {
		          timeout(time: 10, unit: 'MINUTES') 
		          {
		            input message: 'test approve', submitter: 'test'
		          }
		        }
		    }
		}

        stage ('check'){
            when {expression { params.build == "FAILURE" }}
            steps{
                script{
                    try{
                        build(job: 'build')
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

