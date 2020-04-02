pipeline {
	agent any 
	stages{
		stage('build') {
		        steps {
		            sh  """
		                # Some commands
		                """
		            script {
		              timeout(time: 10, unit: 'MINUTES') 
		              {
		                input message: 'test approve', submitter: TEST
		              }
		            }
		        }
		    }
		
		    stage('deploy') {
		        when {
		            branch 'master'
		        }
		        steps {
		            sh  """
		                # some commands
		                """
		        }
		    }
		}
}

