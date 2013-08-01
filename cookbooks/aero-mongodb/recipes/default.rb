#
# Cookbook Name:: aero-mongodb
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# By adding only this line (and depends 'mongodb' in metadata.rb),
# latest MongoDB will be installed and run immediately.
include_recipe "mongodb::default"
