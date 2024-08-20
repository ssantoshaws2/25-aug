pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ssantoshaws2/git-jenking-aws-pipeline-11-aug.git'
        }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform destroy') {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
        
    }
}
