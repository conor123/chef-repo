#
# Cookbook:: server-base
# Recipe:: ntp
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package "ntp" do
    action [:install]
end

service "ntpd" do
    action [:enable,:start]
end
