pipeline {
    agent {
        label "worker"
    }
    stages{
        stage("Build"){
            steps{
                echo "Building"
                sh "touch buildfile.txt"
            }
        }
        stage ("Test"){
            steps{
                echo "Testing"
                sh "ls -la"
            }
        }
        stage ("Deploy"){
            steps{
                echo "Deploy"
                sh "pwd"
                sh "mv buildfile.txt ~/jenkins-pipelines/ || true"
            }
        }





    }


}