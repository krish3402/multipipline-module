pipeline {
	agent any
	stages {		
		stage('Test') {
			steps {
				bat label: '', script: 'mvn deploy sonar:sonar'
			}
		}
		stage('Deploy') {
			steps {
				bat label: '', script: 'deploy.bat'
			}
		}
	}	
}
