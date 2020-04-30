module RelationDocumentBridge
  module ActiveRecord
    ##
    # Defines methods on ActiveRecord objects for creating Mongoid
    # relationships and accessing those related objects.
    module MongoidMapper
      extend ActiveSupport::Concern

      module ClassMethods

      end
    end
  end
end

class ActiveRecord::Base
  include RelationDocumentBridge::ActiveRecord::MongoidMapper
end
