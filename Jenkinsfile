pipeline {
	agent any 
	stages{
		stage('build') {
		        steps {
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
		    }
		}
}

