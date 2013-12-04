class Article < ActiveRecord::Base
  has_many :tag_items
  has_many :tags, :through => :tag_items

  attr_accessible :body, :title
end
