pipeline {
    agent any

    stages {
       
        stage('Terraform init -reconfigure') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}
