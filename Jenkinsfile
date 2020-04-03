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
            steps {
                script{
                    sh 'echo "mai jos urmeaza"'
                }
            }
            post{
                aborted {
                    script{
                        sh 'echo "stage aborted mate"'
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

