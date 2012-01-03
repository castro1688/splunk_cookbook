#
# Cookbook Name:: splunk
# Recipe:: unix-app
# 
# Copyright 2011-2012, BBY Solutions, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

splunk_app_install "Installing #{node[:splunk][:unix_app_file]} -- Version: #{node[:splunk][:unix_app_version]}" do
  action                  [:create_if_missing]
  app_file                "#{node[:splunk][:unix_app_file]}"
  app_version             "#{node[:splunk][:unix_app_version]}"
  local_templates_directory "unix-app"
  local_templates         ["app.conf.erb","inputs.conf.erb"]
  remove_dir_on_upgrade   "true"
end