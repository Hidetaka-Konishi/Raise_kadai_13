require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['TARGET_HOST']

options = Net::SSH::Config.for(host)

options[:user] ||= ENV['SSH_USER'] || "ec2-user"

set :host,        options[:host_name] || host
set :ssh_options, options

set :disable_sudo, true

# Sudo pass
# set :sudo_password, ENV['SUDO_PASSWORD']

# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C'

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
