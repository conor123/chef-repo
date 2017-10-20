#
# Cookbook:: wordpress
# Recipe:: create_database
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash "Create wordpress database" do
    code 'service mysqld start'
    code 'mysql -u root -p"'
    code ''
    code "CREATE DATABASE wordpress;"
    code 'exit;'
end
