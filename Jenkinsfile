// preparación, construcción, análisis de la imagen, push al
//registry de docker y despliegue en su máquina local
pipeline{
    agent {
        docker { image 'node:14-alpine' }
    }
    stages {
        stage('Staging...'){
            steps{
                sh 'docker ps'
            }
        }
        stage('Build Image...'){
            steps{
                echo "testing stages"
            }
        }
        stage('Validate...'){
            steps{
                echo "testing stages"
            }
        }
        stage('Upload to Registry...'){
            steps{
                echo "testing stages"
            }
        }
        stage('Deploy...'){
            steps{
                echo "testing stages"
            }
        }
    }
}