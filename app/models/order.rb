class Order < ActiveRecord::Base
  belongs_to :user

  has_many :items

  validates :user, presence: true

  scope :draft, -> { where(draft: true) }

  def link=(*)
    items.new
  end
end
