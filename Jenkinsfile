pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
			steps {
				script {
					withCredentials([string(credentialsId: 'ok_cli_id', variable: 'clientid'), string(credentialsId: 'ok_cli_id', variable: 'client_secret')]) {
						sh '''
							echo $clientid
							'''
					}
				}
			}
        }
    }
}
