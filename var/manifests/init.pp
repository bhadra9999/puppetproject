class var {

$player1 = "sindhu"

file {'/tmp/playerinfo':
     ensure => file,
     content => $player1,
     }

}
