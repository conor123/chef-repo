#
# Cookbook:: mysql-simple
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'mysql'
package 'mysql-server'

execute "Start MYSQL Service" do
  user "root"
  command "service mysqld start"
end
