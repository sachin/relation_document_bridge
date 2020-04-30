module RelationDocumentBridge
  module Mongoid
    ##
    # Defines methods on Mongoid objects for creating ActiveRecord
    # relationships and accessing those related objects.
    module ActiveRecordMapper
      extend ActiveSupport::Concern

      module ClassMethods

      end
    end
  end
end

module Mongoid::Document
  include RelationDocumentBridge::Mongoid::ActiveRecordMapper
end
