class Item < ActiveRecord::Base

  belongs_to :order

  has_many :taggings
  has_many :tags, through: :taggings

end
