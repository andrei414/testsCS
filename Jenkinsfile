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
		                input message: 'test approve', submitter: 'test'
		                input message: 'test approve', submitter: 'test1'
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

