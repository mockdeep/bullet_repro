class HomeController < ApplicationController
  def index
    current_user.draft_order.destroy!
    @order = current_user.draft_order
    @order.update_attributes!(link: true)
    render text: 'it works', layout: false
  end

  def current_user
    @current_user ||= User.first || User.create!
  end
end
