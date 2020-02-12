class AutopartsController < ApplicationController
  before_action :set_order
  before_action :set_order_autopart, only: [:show, :update, :destroy]

  def index
    json_response(@order.autoparts)
  end

  def show
    json_response(@autopart)
  end

  def create
    @order.autoparts.create!(autopart_params)
    json_response(status: "SUCCESS", message: 'autopart created successfully.')

  end

  def update
    @autopart.update(autopart_params)
    json_response(status: 'SUCCESS', message: 'autopart updated successfully.')
  end

  def destroy
    @autopart.destroy
    json_response(status: 'SUCCESS', message: 'autopart deleted successfully.')
  end

  private

  def autopart_params
    params.permit(:name, :description)
  end

  def set_order
    @order = Order.find(params[:order_id])
  end

  def set_order_autopart
    @autopart = @order.autoparts.find_by!(id: params[:id]) if @order
  end
end

##BY RICO##
