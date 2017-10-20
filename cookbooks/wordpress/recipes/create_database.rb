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
    #not_if shell_out("mysql -u root -s --skip-column-names -e 'SELECT COUNT(DISTINCT table_name)>0 FROM information_schema.columns WHERE table_schema = \"admindb\";'").stdout().chomp()
end
