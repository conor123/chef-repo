#
# Cookbook:: mysql-default
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
mysql_service 'default' do
  port '3306'
  version '5.7'
  initial_root_password 'a1b2c3d4'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end