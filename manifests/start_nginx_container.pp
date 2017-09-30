include 'docker'

docker::run { 'tchung02/puppet-nginx':
 ensure	=> 'present',
 image 	=> 'tchung02/puppet-nginx',
 ports	=> ['80'],
 expose	=> ['8069'],
}
