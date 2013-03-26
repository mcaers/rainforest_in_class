class ReviewsController < ApplicationController
  before_filter :load_product

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

  # POST /product/:id/reviews
  def create
    # @review = Review.new(
    #   :comment    => params[:review][:comment], 
    #   :product_id => @product.id, 
    #   :user_id    => current_user.id
    # )
    @review = @product.reviews.build(
      :comment => params[:review][:comment],
      :user_id => current_user.id
    )

    if @review.save
      redirect_to @product, notice: 'Review was successfully created.'
    else
      # render action: "../products/show" # Hacky, not nice
      render "products/show"
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

  # This method runs before every single action in the controller.
  def load_product
    @product = Product.find(params[:product_id])
  end
end
