pipeline {
	agent any
	stages {		
		stage('Test') {
			steps {
				bat label: '', script: 'mvn test-compile'
			}
		}
		stage('Deploy') {
			steps {
				bat label: '', script: 'deploy.bat'
			}
		}
	}	
}
