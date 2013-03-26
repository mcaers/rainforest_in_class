class ReviewsController < ApplicationController
  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])

    if @review.save
      redirect_to @review, notice: 'Review was successfully created.'
    else
      render action: "new"
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url }
      format.json { head :no_content }
    end
  end
end
