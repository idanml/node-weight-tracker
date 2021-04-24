pipeline {
    agent {label 'VM1slave'}
	withCredentials([string(credentialsId: 'ok_cli_id', variable: 'clientid'), string(credentialsId: 'ok_cli_id', variable: 'client_secret')]) {
    stages {
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
