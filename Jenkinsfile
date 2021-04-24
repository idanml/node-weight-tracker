pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
            steps {
				sh 'pwd'
                sh '''
				echo "# Host configuration
PORT=8080
HOST=0.0.0.0
NODE_ENV=development
HOST_URL=Http://52.250.114.219:8080
COOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong!

# Okta configuration
OKTA_ORG_URL=https://dev-39605781.okta.com
OKTA_CLIENT_ID=0oac9ljvahDCVERto5d6
OKTA_CLIENT_SECRET=

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
