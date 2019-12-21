pipeline {
	agent any
	stages {		
		stage('Test') {
			steps {
				bat label: '', script: 'mvn clean deploy -Dorg.apache.maven.plugins:maven-compiler-plugin:3.8.1'
			}
		}
		stage('Deploy') {
			steps {
				echo "deploy"
			}
		}
	}	
}
