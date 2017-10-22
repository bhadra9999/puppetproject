class ssh::install {

####################################################
#
#   if $osfamily == 'RedHat' {
#      $package_name = 'openssh'
#        }    
#   elsif $osfamily == 'Debian' {
#        $package_name = 'ssh'
#         }
#   else {
#        $package_name = 'ssh'
#        }
#
#    package {$package_name:
#        ensure => present,
#        }
#
####################################################
#        
#        case $::osfamily {
#        'RedhHat': {$package_name = 'openssh'}
#        'Debian': {$package_name = 'ssh'}
#        default: {warning('os not supported')}
#        }
#       
#        package {$package_name:
#        ensure => present,
#       }
###################################################
#
#	 $package_name = $::osfamily? {
#        'RedHat' => 'openssh',
#        'Debian' => 'ssh',
#        }
#
#       package {$package_name:
#        ensure => present,
#        }
##################################################

       $package_name = $::osfamily? {
       'RedHat' => 'openssh',
       'Debian' => 'ssh',
        }
       unless {($memorysize < 2gb)}                                   }
       package {$package_name:
       name => $package_name,
       ensure => present,
                }
}
