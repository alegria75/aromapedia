class TagItem < ActiveRecord::Base
  belongs_to :articles
  belongs_to :tags
  # attr_accessible :title, :body
end
