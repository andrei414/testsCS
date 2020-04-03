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
                failure {
                    script{
                        sh "exit 1"
                        //or
                        error "Failed, exiting now..."
                    }
                }
                aborted {
                    script{
                        sh 'echo "stage aborted mate"'
                    }
                }
                unstable {
                    script{
                           sh "exit 1"
                          //or
                          error "Unstable, exiting now..."                    
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

