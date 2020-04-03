pipeline {
	agent any 
	stages{
		stage('replay') {
			steps {
				sh echo
			}
		}
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
		
		    stage('deploy') {
		        steps {
		            sh 'echo "hello"'
		        }
		    }
		}
}

