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
		                input message: 'test approve', submitter: 'test', submitter: 'marcel'
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

