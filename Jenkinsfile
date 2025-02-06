node{
    stage('Git Checkout'){
        git branch: 'main', url: 'https://github.com/tarun-gurugubelli/kubernetes-deployment.git'
    }
    stage('Sending Dockerile to Ansible'){
        sshagent(['ansible']) {
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.87.81'
            sh 'scp -r /var/lib/jenkins/workspace/k8-demo/* ubuntu@172.31.87.81:/home/ubuntu'
        }
    }
    stage('Building Docker Image'){
        sshagent(['ansible']) {
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.87.81 cd /home/ubuntu'
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.87.81 docker image build -t $JOB_NAME:v1.$BUILD_ID .'

        }  
    }
    
}
