require 'active_record'
require 'yaml'
require 'byebug'
byebug
ActiveRecord::Base.configurations = YAML.safe_load(File.join(File.dirname(__FILE__), 'config', 'database.yml'))
ActiveRecord::Base.establish_connection( :test)
ActiveRecord::Migration.verbose = false
load(File.join(File.dirname(__FILE__), 'db', 'schema.rb'))

require 'models'
