#
# Cookbook Name:: td-agent
# Recipe:: plugin-elasticsearch
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# elasticsearchプラグインのインストール
gem_package "fluent-plugin-elasticsearch" do
  gem_binary "/opt/td-agent/embedded/bin/fluent-gem"
  action :install
end
