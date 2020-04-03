pipeline {
	agent any 
	stages{
		stage('build') {
		        steps {
		            sh  'echo "deploy acc"'
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
		        steps {
		            sh 'echo "hello"'
		        }
		    }
		}
}

