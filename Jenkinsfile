pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
            steps {
                sh '''
				echo "Hello World
				Hello World2" > test.txt
				'''
            }
        }
    }
}
