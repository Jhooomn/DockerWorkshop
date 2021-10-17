
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('DOCKER_HUB_TOKEN')
	}

	stages {

		stage('Build') {

			steps {
				bat 'docker build -t jhooomn/workshop:latest .'
			}
		}

		stage('Login') {

			steps {
				bat "docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin $DOCKERHUB_CREDENTIALS_PSW"
			}
		}

		stage('Push') {

			steps {
				bat 'docker push jhooomn/workshop:latest'
			}
		}
	}

	post {
		always {
			bat 'docker logout'
		}
	}

}
