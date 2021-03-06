Symfony with Vagrant and Ansible
============================

Clean configuration of Vagrant with Ansible and Virtualbox for Symfony 2.5.x deployment.

1. Install [VirtualBox][virtualbox] (v4.3+), [Vagrant][vagrant] (v1.4.3+) and [Ansible][ansible] (v1.7.2+).
2. Initialize (download, run and configure) virtual machine with command `vagrant up`
3. Connect to virtual machine with command `vagrant ssh`
4. On virtual machine go to symfony directory with command `cd /vagrant/symfony`
5. On virtual machine install  latest Symfony v2.5.x with command `composer create-project symfony/framework-standard-edition . '2.5.*'`
6. Run Symfony web server with command `php app/console server:run 192.168.100.10:8080`
7. Open web browser on [local machine][symfonylocal]

[vagrant]: https://www.vagrantup.com/ "Development environments made easy"
[virtualbox]: https://www.virtualbox.org/ "VirtualBox is a powerful x86 and AMD64/Intel64 virtualization"
[ansible]: http://www.ansible.com/home "Ansible is Simple IT Automation"
[symfonylocal]: http://192.168.100.10:8080/
