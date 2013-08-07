#
# Cookbook Name:: aerochat
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "imagemagick" do
  action :install
end

git "/home/vagrant/work/aerochat" do
  repository "git@github.com:soplana/aerochat.git"
  reference "master"
  action :sync
end
