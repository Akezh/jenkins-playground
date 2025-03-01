pipeline {
    agent { 
        node {
            label 'docker-jenknins-agent-python'
            }
      }
    triggers {
        githubPush()
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                python3 app.py
                python3 app.py --name="Jenkins Test Aki"
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}