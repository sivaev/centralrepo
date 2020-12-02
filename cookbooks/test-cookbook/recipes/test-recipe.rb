#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
#  Copyright:: 2020, The Authors, All Rights Reserved.

file '/testfile' do
	content 'hello how are you!'
	action :create
end

=begin
	content " testing the block comment start"
file    '/testcomm' do
        action :create

end
        content "end of the comment block"
=end

execute "run a script" do
	command <<-EOH
	mkdir /sivadir
	touch /sivafile
	EOH
end
