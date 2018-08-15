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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrL6PBY76qsKCEUnsfPWMnKt78g1eCoVCOZRWIMkkHoCWbPXloSzFz1/Gv3JOMmUtuYxLvaD8ipyH8gTt2Nkp+Tm53VIQkUedgQRpGhaomTOtlfrJngCKmJM6UzapYwE4UySQKnDIExiAfCSvViuOjHyuezgVg498MWV4enO34DUS4yBB0luvGJtFRrYUKjNlCnyx9aPRna+N9NVAvljaIZKdKUD7jpgw9tzz/cvdGQVyQALUaiB6g+ZncMS5pm7J3HZdlT9Hi95KiyO+nEo3anTp/LWn6JSdigRzgau2XpdxkYdV4ehUKUxozsV4+e0vxB4LiEFWxVbLUTbUEZcKH',
	}  
}
