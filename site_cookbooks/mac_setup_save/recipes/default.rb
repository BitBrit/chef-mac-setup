#
# Cookbook Name:: mac_setup
# Recipe:: default
#

bash 'install_homebrew' do
  cwd '/usr/local'
  code <<-EOH
   curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1
  EOH
  not_if { ::File.exists?('/usr/local/bin/brew') }
end

homebrew_tap 'caskroom/cask'
package "brew-cask"

node['mac_setup']['brew_apps'].each do |app|
  homebrew_cask app
end

node['mac_setup']['cask_apps'].each do |app|
  homebrew_cask app
end
