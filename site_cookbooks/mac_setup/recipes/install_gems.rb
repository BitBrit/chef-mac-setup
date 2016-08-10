
node['mac_setup']['gems'].each do |gem, version|
    gem_version = version.nil? ? "> 0.0.0" : version
    gem_package gem do
      version gem_version
    end
end
