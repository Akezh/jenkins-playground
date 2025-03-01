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
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                if [ -f "app.py" ]; then
                    python3 app.py
                else
                    echo "Error: app.py not found"
                    exit 1
                fi
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