# Test5B

# sudo yum install -y yum-utils
# sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
# sudo yum -y install terraform

# sudo yum install java-11-amazon-corretto-headless
# sudo yum install git

# sudo yum install maven

# sudo yum update –y
# sudo wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat-stable/jenkins.repo 
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# sudo yum install jenkins -y
# sudo systemctl enable jenkins
# sudo systemctl start jenkins
# sudo systemctl status jenkins


# line 26

<!-- script {
                    env.NEXT_STEP = input message: 'Implement plan?', ok: 'Implement',
                    parameters: [choice(name: 'Implement', choices: ['apply', 'destroy', 'do nothing'], description: 'implementation stage')]
                } -->
