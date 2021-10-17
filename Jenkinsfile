
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('DOCKER_HUB_TOKEN')
	}

	stages {

		stage('Build') {

			steps {
				bat 'docker build -t jhooomn/DockerWorkshop:latest .'
			}
		}

		stage('Login') {

			steps {
				bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				bat 'docker push jhooomn/DockerWorkshop:latest'
			}
		}
	}

	post {
		always {
			bat 'docker logout'
		}
	}

}
