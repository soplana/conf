#
# Cookbook Name:: aero-mysql
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'database::mysql'

mysql_connection_info =
 { host: "localhost",
   username: 'root',
   password: node['mysql']['server_root_password'] }

mysql_database_user "aerochat" do
  connection mysql_connection_info
  password ""
  # database_name "*"
  privileges [:all]
  action [:create, :grant]
end
