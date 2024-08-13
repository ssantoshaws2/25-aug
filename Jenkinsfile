pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("/aws-pipleine-jenking/")
                        {
                            git "https://github.com/ssantoshaws2/git-jenking-aws-pipeline-11-aug.git"
                        }
                    }
                }
            }

        stage('Plan') {
            steps {
                sh 'pwd;cd /aws-pipleine-jenking/ ; terraform init'
                sh "pwd;cd /aws-pipleine-jenking/ ; terraform plan -out tfplan"
                sh 'pwd;cd /aws-pipleine-jenking/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'aws-pipleine-jenking/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                sh "pwd;cd /aws-pipleine-jenking/ ; terraform apply -input=false tfplan"
            }
        }
    }

  }
