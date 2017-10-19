#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

all_web_nodes = search('node', "role:web AND chef_environment:#{node.chef_environment}")

members = []

all_web_nodes.each do |web_node|
  member = {
    "ipaddress" => web_node['ipaddress'],
    "hostname" => web_node['hostname'],
    "port" => 80,
    "ssh-port" => 80
  }

  members.push(member)
end

node.default['haproxy']['members'] = members

# node.default['haproxy']['members'] = [
# {
#   "hostname" => "web1",
#   "ipaddress" => "192.168.10.43",
#   "port" => 80,
#   "ssl-port" => 80
# },
# {
#   "hostname" => "web2",
#   "ipaddress" => "192.168.10.44",
#   "port" => 80,
#   "ssl-port" => 80
# }
# ]

include_recipe "haproxy::manual"

