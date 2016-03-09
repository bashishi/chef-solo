#
# Cookbook Name:: td-agent
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# yumリポジトリ登録
bash 'yum.repo' do
  user 'root'
  code <<-EOC
    rpm --import http://packages.treasuredata.com/GPG-KEY-td-agent
  EOC
  creates "/etc/yum.repos.d/td-agent.repo"
end
cookbook_file "/etc/yum.repos.d/td-agent.repo" do
  source "td-agent.repo"
end

# td-agentインストール
package "td-agent" do
  action :install
end

# forestプラグインのインストール
gem_package "fluent-plugin-forest" do
  gem_binary "/opt/td-agent/embedded/bin/fluent-gem"
  action :install
end

# config-expanderプラグインのインストール
gem_package "fluent-plugin-config-expander" do
  gem_binary "/opt/td-agent/embedded/bin/fluent-gem"
  action :install
end

# refere-parserプラグインのインストール
gem_package "fluent-plugin-referer-parser" do
  gem_binary "/opt/td-agent/embedded/bin/fluent-gem"
  action :install
end
