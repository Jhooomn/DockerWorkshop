
pipeline{
	agent any
	stages {
		stage('Build') {
			steps {
				bat 'docker build -t jhooomn/workshop:latest .'
			}
		}
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', "$DOCKER_HUB_TOKEN" ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
	}
	post {
		always {
			bat 'docker logout'
		}
	}

}
