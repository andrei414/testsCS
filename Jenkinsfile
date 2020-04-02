pipeline {
	agent any 
	stages{
			stage('input')
				{
			    script{
			        input "Continue?"
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

