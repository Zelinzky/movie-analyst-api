@Library("ramp-up-shared-lib") _

containerizedNodeJS {
    registry = '961518039473.dkr.ecr.us-east-1.amazonaws.com'
    repository = 'rlargot/ramp-up/movies-api'
    tag = "$env.BRANCH_$env.BUILD"
    credentials ='ecr:us-east-1:AWSCRED'
}