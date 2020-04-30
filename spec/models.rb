# Active Record models

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Article < ApplicationRecord

end




# MongoId models