require 'active_record'
require 'yaml'
require 'byebug'

base_path = File.dirname(__FILE__)

ActiveRecord::Base.configurations = YAML.safe_load(File.read(File.join(base_path, 'config', 'database.yml')))
ActiveRecord::Base.establish_connection( :test)
ActiveRecord::Migration.verbose = false
load(File.join(base_path, 'db', 'schema.rb'))

require 'models'
