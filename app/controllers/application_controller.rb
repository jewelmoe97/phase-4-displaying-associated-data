class ApplicationController < ActionController::API
    def index
        reviews = Review.all.order(rating: :desc)
        render json: reviews, include: :dog_house
      end
    
end
