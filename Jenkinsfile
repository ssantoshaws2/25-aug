

pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                 git 'https://github.com/ssantoshaws2/25-aug.git'
        }
        }
        stage('Terraform init-1') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform plan -2') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform apply -3') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}
