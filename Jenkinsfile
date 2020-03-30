node {
    stage('build'){
        echo "building"
    }
}
stage('Deploy approval'){
    input "Deploy to prod?"
    script{
  	 	try {
            timeout(time:30, unit:'MINUTES') {
                env.APPROVE_PROD = input message: 'Deploy to Production', ok: 'Continue',
                    parameters: [choice(name: 'APPROVE_PROD', choices: 'YES\nNO', description: 'Deploy from STAGING to PRODUCTION?')]
                if (env.APPROVE_PROD == 'YES'){
                    env.DPROD = true
                } else {
                    env.DPROD = false
                }
            }
        }
    }
}
node {
    stage('deploy to prod'){
        echo "deploying"
    }
}