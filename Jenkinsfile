pipeline {
    agent {label 'VM1slave'}
    stages {
	withCredentials([string(credentialsId: 'ok_cli_id', variable: 'clientid'), string(credentialsId: 'ok_cli_id', variable: 'client_secret')]) {
        stage('Create .env') {
            steps {
                sh '''
				echo $clientid
				'''
            }
        }
    }
	}
}
