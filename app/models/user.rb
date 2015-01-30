class User < ActiveRecord::Base

  has_many :orders, inverse_of: :user

  def draft_order
    orders.draft.first_or_create
  end

end
