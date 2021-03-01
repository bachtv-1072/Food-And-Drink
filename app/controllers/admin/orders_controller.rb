class Admin::OrdersController < Admin::BaseController
  def index
    @list_all_orders = Order.all
  end
end