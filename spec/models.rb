# Active Record models =======================================

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# Schema:
# t.string :name
class User < ApplicationRecord
  has_many :articles, inverse_of: :user, dependent: :destroy
  has_many :comments, inverse_of: :commenter, dependent: :destroy
end

# Schema:
# t.string :title
# t.integer :user_id
# t.integer :comment_id
class Article < ApplicationRecord
  belongs_to :user, inverse_of: :articles
  has_many :comments, inverse_of: :article, dependent: :destroy
end

# Schema:
# t.string :comment
# t.integer :article_id
# t.integer :commenter_id
class Comment < ApplicationRecord
  belongs_to :commenter, class_name: 'User', inverse_of: :comments
  belongs_to :article, inverse_of: :comments
end

# MongoId Models ===========================

require 'mongoid'
class Magazine
  include Mongoid::Document

  # schema
  field :name,              type: String

  # relationships
  has_many :posts, inverse_of: :magazine, dependent: :destroy
end

class Post
  include Mongoid::Document

  # schema
  field :title,             type: String
  field :magazine_id,       type: Integer

  # relationships
  belongs_to :magazine, inverse_of: :posts
end

