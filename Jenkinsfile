pipeline {
	agent any
	stages {		
		stage('Test') {
			steps {
				bat label: '', script: 'mvn deploy'
			}
		}
		stage('Deploy') {
			steps {
				bat label: '', script: 'deploy.bat'
			}
		}
	}	
}
