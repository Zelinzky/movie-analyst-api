@Library("ramp-up-shared-lib") _

containerizedNodeJS {
    registry = '961518039473.dkr.ecr.us-east-1.amazonaws.com'
    repository = 'rlargot/ramp-up/movies-api'
    tag = "${env.BRANCH_NAME}_${env.BUILD_ID}"
    credentials ='ecr:us-east-1:AWSCRED'
}