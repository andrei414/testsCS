pipeline {
	agent any 
	stages{
		stage('build') {
		        steps {
		            sh  """
		                # Some commands
		                """
		            script {
		              timeout(time: 10, unit: 'MINUTES') {
		                input(id: "Deploy Gate", message: "Deploy", ok: 'Deploy')
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

