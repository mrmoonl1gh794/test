class script {
	package { '/etc/example_repo/test/script-1.0.sh':
	ensure	=>	installed,
	owner	=>	'root',
	mode	=>	'0755',
	content	=>	template('template.erb')
}
}
