pipeline {
    agent {label 'SlaveVm1'}
    stages {
		stage('create tar.gz') {
			steps {
				sh 'touch artifact.tar.gz'
				sh 'tar --exclude=artifact.tar.gz -zcvf artifact.tar.gz -C /home/idanml/jenkins/workspace/CI .'
			}
		}
    }
	post {
		success {
			azureUpload containerName: 'jenkins', filesPath: 'artifact.tar.gz', storageCredentialId: '48dc6adf-c252-41c2-974e-848e5affbb4b', storageType: 'blobstorage'
		}
		failure {
            sh 'echo "CI pipline has been failed "'
        }
	}	
}