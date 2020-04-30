require "relation_document_bridge/version"

# Check for ActiveRecord and MongoId.
if defined?(ActiveRecord::Base) && defined?(Mongoid::Document)
  require 'relation_document_bridge/active_record/mongoid_mapper'
  require 'relation_document_bridge/mongoid/active_record_mapper'
end

module RelationDocumentBridge
  class Error < StandardError; end
end
