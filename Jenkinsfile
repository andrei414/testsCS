pipeline {
	agent any 
	stages{
			stage{
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

