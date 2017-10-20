#
# Cookbook:: wordpress
# Recipe:: wordpress
#
# Copyright:: 2017, The Authors, All Rights Reserved.
ruby_block "install_wordpress" do
  block do
    require 'fileutils'
    FileUtils.cd node[:wordpress][:app_root]
    system 'wget https://wordpress.org/latest.tar.gz'
    system 'tar -xzf latest.tar.gz --strip-components=1 && rm latest.tar.gz'
  end
  not_if { ::File.exist?(File.join(node[:wordpress][:app_root], 'wp-settings.php')) }
  action :create
end

template("/var/www/html/.htaccess") do
  source(".htaccess.erb")
end

template("/var/www/html/wp-config.php") do
  source("wp-config.php.erb")
  variables(
    db_host: node[:wordpress][:db_host],
    db_name: node[:wordpress][:db_name],
    db_user: node[:wordpress][:db_user],
    db_password: node[:wordpress][:db_password]
  )
end

directory '/var/www/html/' do
    owner 'apache'
    group 'apache'
    mode '755'
    recursive true
end

execute "chown-apache" do
  command "chown -R apache:apache /var/www/html/wp-content"
  user "root"
  action :run
  not_if "stat -c %U /var/www/html/wp-content |grep apache"
end
