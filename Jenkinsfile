pipeline {
	agent any 
	stages{
		stage('replay') {
			steps {
				sh 'echo "replay"'
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
		              retry(1){
		              	sh 'echo "hi"'
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

