pipeline {
	agent any
	stages {		
		stage('Test') {
			steps {
				mvn clean install
			}
		}
		stage('Deploy') {
			steps {
				echo "deploy"
			}
		}
	}	
}
