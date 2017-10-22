class ssh_var {

$PermitRootLogin = 'PermitRootLogin no'

file {'/etc/ssh/sshd_config': 
     content => template('ssh_var/sshd_config.erb'),
     }
}
