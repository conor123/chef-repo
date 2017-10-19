#
# Cookbook:: mysql-default
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'yum-mysql-community::mysql57'

mysql_service 'default' do
  port '3306'
  version '5.7'
  package_version ''
  initial_root_password 'change me'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end