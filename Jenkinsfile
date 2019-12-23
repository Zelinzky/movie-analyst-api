pipeline {
    agent any
    stages {
        stage ('Create Container') {
            steps{
                script{
                    docker.build("961518039473.dkr.ecr.us-east-1.amazonaws.com/rlargot/ramp-up/movies-api:latest")
                }
            }
        }
        stage ('Publish container to ECR') {
            steps{
                script{
                    docker.withRegistry('https://961518039473.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:AWSCRED') {
                        sh "docker push 961518039473.dkr.ecr.us-east-1.amazonaws.com/rlargot/ramp-up/movies-api:latest"
                    }
                }
            }
        }
    }
    post {
        cleanup {
            script{
                sh "docker image rm 961518039473.dkr.ecr.us-east-1.amazonaws.com/rlargot/ramp-up/movies-api:latest"
            }
        }
    }
}