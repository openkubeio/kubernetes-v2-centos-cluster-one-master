#https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one
#https://geekdudes.wordpress.com/2019/09/13/vagrant-authentication-failure-retrying-after-packaging-box/

vagrant up

vagrant ssh -- -t "sudo sh /etc/cleanup.sh"

vagrant halt 

vagrant box list

vagrant package --base master.qa.kube.io --output ../../../open-kubeio-v17.3.box

vagrant box add ../../../open-kubeio-v17.3.box --name open-kubeio-v17.3

vagrant box list
