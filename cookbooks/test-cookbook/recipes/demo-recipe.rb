#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'tree' do
	action :install

end

file '/testfile12' do
	content "hello good morning \n"
	action :create
	owner 'siva'
	group 'siva'
end
