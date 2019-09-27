["httpd", "mod_ssl"].each do |p|
	package p do
		action :install
	end
end
