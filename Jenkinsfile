pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
			script {
				withCredentials([string(credentialsId: 'ok_cli_id', variable: 'clientid'), string(credentialsId: 'ok_cli_id', variable: 'client_secret')]) {
					steps {
						sh '''
							echo $clientid
							'''
					}
				}
			}
        }
    }
}
