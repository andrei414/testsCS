pipeline {
	agent any 
		node{
		stage ('Approve?')
		{
		    timeout(time:2, unit:'DAYS')
		    {
		        input message: 'Can you approve this ??', submitter: MY_APPROVERS
		    }
		}
	}
}

