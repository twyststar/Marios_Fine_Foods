class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]


  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:name, :rating, :content_body)
    end
end
