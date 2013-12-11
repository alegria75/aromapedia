class Article < ActiveRecord::Base
  has_many :tag_items
  has_many :tags, :through => :tag_items

  attr_accessible :body, :title

  def self.alphasort
  	order('lower(title)')
  end

  def self.groupbyletter
  	alphasort.group_by do |article|
  		article.title.first
  	end
  end
end
