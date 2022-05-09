class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDo1Qy/Xyd2eFR3AEenHIs1IYvBiAyBKvAs3N3A163sRWG5GsmIAjg3O/UPJOnCHOH3H/vfbUcG2Oddqb2sb2iuHXsackUh/ir7ujFuCTlypR5B9jBJ/XSiYRR8OuaXwBoh4o6A24FsclGgvhjlmNsiR4yMDq8zPYW1P7clEDoB+oDA2GlXqX0aOcbhTyr0qLxyAQjfOc9fCe1wg73Z837vTrdf3UBCBtiLr7ozx8aIHrKj4hb0F2Fwvabol1fIZkV4AAt6K8rHoU8+qTdT5JA5YKJFrC18rslm9hZMXn5nX8o9ncii7a7Mi13rZzukb4zSSuJCaVBVA0/+oowQAGG7',
	}  
}
