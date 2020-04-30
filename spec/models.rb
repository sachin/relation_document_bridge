# Active Record models
require 'mongoid'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Article < ApplicationRecord

end




# MongoId models

class Comment
  include Mongoid::Document

  field :comment,           type: String
  field :source_id,         type: Integer
  field :source_type,       type: String
end