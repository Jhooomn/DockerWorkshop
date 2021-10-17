
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('DOCKER_HUB_TOKEN')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t jhooomn/DockerWorkshop:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push jhooomn/DockerWorkshop:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
