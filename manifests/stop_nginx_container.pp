include 'docker'

docker::run { 'tchung02/puppet-nginx':
 ensure	=> 'absent',
 image 	=> 'tchung02/puppet-nginx',
 ports	=> ['80', '443'],
 expose	=> ['80', '443'],
}
