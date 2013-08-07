#
# Cookbook Name:: aerochat-node
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'npm::default'

["build-essential", "libssl-dev"].each do |pkg|
  package pkg do
    action :install
  end
end

npm_package "socket.io@0.9.16"
npm_package "mongoose@3.7.0"

aerochat_node_repo = "/home/vagrant/work/aerochat-node"

git aerochat_node_repo do
  repository "git@github.com:soplana/aerochat-node.git"
  reference "master"
  action :sync
end

### doesn't work!!
# directory aerochat_node_repo do
#   owner 'vagrant'
#   group 'vagrant'
#   mode '0755'
#   recursive true
#   action :create
# end
