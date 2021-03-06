
root_path = File.expand_path(File.join(File.dirname(__FILE__), '..'))
home_path = '/users/ghill'
cookbook_path   [
                  '~/.berkshelf/cookbooks',
                  File.join(root_path, 'vendored_cookbooks')
                ]
role_path       File.join(root_path, 'roles')

# Move all the state stuff from /var/chef. I wish there was a single config
# variable for this!
state_root_path = File.expand_path('~/.chef/state')
file_cache_path  "#{state_root_path}/cache"
checksum_path    "#{state_root_path}/checksums"
sandbox_path     "#{state_root_path}/sandbox"
file_backup_path "#{state_root_path}/backup"
cache_options[:path] = file_cache_path
