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

aerochat_repo = "/home/vagrant/work/aerochat"

git aerochat_repo do
  repository "git@github.com:soplana/aerochat.git"
  reference "master"
  action :sync
end


### doesn't work!!
# directory aerochat_repo do
#   owner 'vagrant'
#   group 'vagrant'
#   mode '0755'
#   recursive true
#   action :create
# end
