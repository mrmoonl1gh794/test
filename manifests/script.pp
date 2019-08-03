class module::class {
	file	{
		'script':
		ensure => 'file',
		source => '/rpmbuild/RPMS/noarch/script-1.0-1%.noarch.rpm',
		path => '/usr/rpmbuild/BUILD/script-1.0/configure',
		owner => 'root',
		group => 'root',
		mode => '0744',
		notify => Exec['run'],
		}
	exec	{
		'run':
		command => '/usr/local/bin/script-1.0-1%.sh',
		refreshonly => true,
		}
	cron	{
		command => '/usr/sbin/logrotate',
		user 	=> 'root',
		day	=> 2,

}
}
