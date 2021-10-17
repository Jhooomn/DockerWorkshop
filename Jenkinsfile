
pipeline{
	agent any
	stages {
		stage('Build') {
			steps {
				bat 'docker build -t jhooomn/workshop:latest .'
			}
		}
		stage('Push') {

			steps {
				bat 'docker push jhooomn/workshop:latest'
			}
		}
	}
}
