pipeline {
    agent {label 'VM1slave'}
    stages {
        stage('Create .env') {
            steps {
				sh 'pwd'
                sh '''
				echo "Hello World2
				hellowww" > test.txt
				'''
            }
        }
    }
}
