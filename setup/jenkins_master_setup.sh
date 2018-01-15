#!/bin/bash
# Run under ROOT/sudo

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install jenkins -qq


# On master
#https://support.cloudbees.com/hc/en-us/articles/115000073552-Host-Key-Verification-for-SSH-Agents
#run on master:
ssh-keygen -R $AGENT_HOSTNAME_OR_IP
#run on slave:
cat /etc/ssh/ssh_host_rsa_key.pub
# paste into ~/.ssh/known_hosts on Master HOST NAME + outputs of rsa_key.pub
# Then relanch the Slave agent and use "Trust SSH host key
