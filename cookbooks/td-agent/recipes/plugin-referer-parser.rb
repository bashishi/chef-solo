#
# Cookbook Name:: td-agent
# Recipe:: plugin-referer-parser
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# referer-parserプラグインのインストール
gem_package "fluent-plugin-referer-parser" do
  gem_binary "/opt/td-agent/embedded/bin/fluent-gem"
  action :install
end
