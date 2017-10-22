class motd inherits httpd::abc::abc {

#$player1 = 'rohit'
file {'/etc/motd': 
     #source => 'puppet:///modules/motd/motd',
     content => template('motd/motd.erb'),
     }

 #notify {"Best Cricketer is ${palyer1}":}
}
