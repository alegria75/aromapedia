class Tag < ActiveRecord::Base
  has_many :tag_items
  has_many :articles, :through => :tag_items
   # attr_accessible :title, :body
end
