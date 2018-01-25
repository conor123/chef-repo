#
# Cookbook:: wordpress
# Recipe:: create_database
#
# Copyright:: 2017, The Authors, All Rights Reserved.
mysql_password = ""

execute "Create wordpress database" do
  user "root"
  #command "service mysqld start"
  # command "mysql -r -B -N -e \"CREATE DATABASE wordpress\""
  command "mysql -e \"CREATE DATABASE wordpress\""
  #command "mysql"
  # command "mysql -u root -p"
  # command ""
  #command "CREATE DATABASE wordpress;"
  # command "exit;"
end
