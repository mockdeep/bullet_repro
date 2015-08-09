class HomeController < ApplicationController
  before_action :setup

  def index
    user_1, user_2 = User.all

    order_1 = user_1.order
    order_2 = user_2.order
    order_1.items += order_2.items

    render text: 'it works', layout: false
  end

private

  def setup
    User.delete_all

    user_1 = User.create!
    user_2 = User.create!

    order_1 = Order.create(user: user_1)
    order_2 = Order.create(user: user_2)

    order_1.items.create!
    order_2.items.create!
  end
end
