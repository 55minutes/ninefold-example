set :rails_env, 'staging'
_cset :branch, 'development'

server '192.241.221.11',
       :web, :app, :db, :backup, :primary => true
