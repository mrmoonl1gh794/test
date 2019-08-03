class script {
	file { '/etc/example_repo/test/script-1.0.sh':
	ensure	=>	present,
	owner	=>	'root',
	mode	=>	'0755',
	content	=>	template('template.erb')
}
}
