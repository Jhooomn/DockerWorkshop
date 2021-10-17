
pipeline{
	agent any
	stages {
		stage('Build') {
			steps {
				bat 'docker build -t jhooomn/workshop:latest .'
			}
		}
        stage('Validate image'){
            steps{
                bat "docker image inspect jhooomn/workshop:latest"
            }
        }
		stage('Deploy') {
			steps {
				bat 'docker run -d -p 25565:25565 jhooomn/workshop:latest'
			}
		}
	}
}
