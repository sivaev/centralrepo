#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/configfile' do
	content "this file is to store the attribute details of the work station from ohai
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu'] ['0'] ['mhz']}
	CPU: #{node['cpu'] ['0'] ['model_name']}
        CPU: #{node['cpu'] ['0'] ['model']}
	MEMORY: #{node['memory'] ['total']}
	MEMORY: #{node['memory']['swap'] ['total']}"
	owner 'root'
	group 'root'
	action :create
end
