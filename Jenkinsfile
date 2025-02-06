node{
    stage('Git Checkout'){
        git branch: 'main', url: 'https://github.com/tarun-gurugubelli/kubernetes-deployment.git'
    }
    stage('Sending Dockerile to Ansible'){
        sshagent(['ansible']) {
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.87.81'
            sh 'scp /var/lib/jenkins/workspace/k8-demo/* ubuntu@172.31.87.81:/home/ubuntu'
        }
    }
    
}