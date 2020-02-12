class ReviewsController < ApplicationController
  before_action :set_autopart
  before_action :set_autopart_review, only: [:show, :update, :destroy]

  def index
    json_response(@autopart.reviews)
  end

  def show
    json_response(@review)
  end

  def create
    @autopart.reviews.create!(review_params)
    json_response(status: "SUCCESS", message: 'review created successfully.')

  end

  def update
    @review.update(review_params)
    json_response(status: 'SUCCESS', message: 'review updated successfully.')
  end

  def destroy
    @review.destroy
    json_response(status: 'SUCCESS', message: 'review deleted successfully.')
  end

  private

  def review_params
    params.permit(:name, :review)
  end

  def set_autopart
    @autopart = Autopart.find(params[:autopart_id])
  end

  def set_autopart_review
    @review = @autopart.reviews.find_by!(id: params[:id]) if @autopart
  end
end

##BY RICO##