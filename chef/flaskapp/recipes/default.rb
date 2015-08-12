#
# Cookbook Name:: flaskapp
# Recipe:: default
#
# Copyright (C) 2015 Bonobos, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'poise-python'

# Configure nginx

template "/etc/nginx/sites-available/blog.conf" do
  source "nginx-blog.conf.erb"
  owner "root"
  group "root"
  mode "0744"
end

# deploy code & start gunicorn

application '/vital/devops_blog' do
  git 'https://github.com/vitalco/devops_blog'
  pip_requirements
  gunicorn do
    port 5000
  end
end


  
