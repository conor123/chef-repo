#
# Cookbook:: wordpress
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'wordpress::wordpress'
include_recipe 'wordpress::create_database'
