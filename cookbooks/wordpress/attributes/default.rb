#
default[:wordpress][:app_name] = 'wordpress'
default[:wordpress][:domain_name] = 'test_site.yourdomain.com'
default[:wordpress][:app_root] = "/var/www/html"
default[:wordpress][:db_host] = '127.0.0.1'
default[:wordpress][:db_name] = 'wordpress'
default[:wordpress][:db_user] = 'root'
default[:wordpress][:db_password] = '' # CHANGE THIS - DO NOT USE! 'change me'
