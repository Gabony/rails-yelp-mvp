class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
