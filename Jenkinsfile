

pipeline {
    agent any
    
 

    stages
    {
      stage('Approve based on environment lead') {
	            input {
	                message 'Please select environment'
	                id 'envId'
	                ok 'Submit'
	                submitterParameter 'approverId'
	                parameters {
	                    choice choices: ['Prod', 'Pre-Prod'], name: 'envType'
	                }
	            }

	            steps {
	               echo "Deployment approved to ${envType} by ${approverId}."

	            }
	        }

      
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
              // sh 'terraform destroy --auto-approve'
            }
        }
        
    }
}
