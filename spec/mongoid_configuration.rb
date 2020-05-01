require 'mongoid'

base_path = File.dirname(__FILE__)

Mongoid.load!(File.join(base_path, 'config', 'mongoid.yml'), :test)
