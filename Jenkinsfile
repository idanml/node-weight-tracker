pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
			steps {
				script {
					withCredentials([string(credentialsId: 'ok_cli_id', variable: 'clientid'), string(credentialsId: 'ok_sec', variable: 'client_secret')]) {
						sh '''
							echo "# Host configuration
PORT=8080
HOST=0.0.0.0
NODE_ENV=development
HOST_URL=Http://52.175.226.171:8080
COOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong!

# Okta configuration
OKTA_ORG_URL=https://dev-39605781.okta.com
OKTA_CLIENT_ID=$ok_cli_id
OKTA_CLIENT_SECRET=$client_secret

# Postgres configuration
PGHOST=10.0.3.5
PGUSERNAME=postgres
PGDATABASE=postgres
PGPASSWORD=p@ssw0rd42
PGPORT=5432" > .env
							'''
					}
				}
			}
        }
    }
}
