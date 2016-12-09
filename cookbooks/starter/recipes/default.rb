# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html

apt_repository 'elasticsearch' do
  uri 'https://artifacts.elastic.co/GPG-KEY-elasticsearch/'
  components ['contrib']
  distribution node['lsb']['codename']
  key 'D88E42B4'
  keyserver 'https://pgp.mit.edu/'
  action :add
  deb_src true
end
