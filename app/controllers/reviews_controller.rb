class ReviewsController < ApplicationController

# get all reviews
get "/reviews" do
  Review.all.to_json
end

# get one review
  get "/reviews/:id" do
    Review.find(params[:artwork_id]).to_json
  end

# create a review
post "/reviews" do
  review = Review.create(author: params[:author], review: params[:review], lover_id: params[:lover_id], artwork_id: params[:artwork_id])
  review.to_json
end

# update a review
patch "/reviews/:id" do
  review = Review.find(params[:id])
  review.update(author: params[:author], review: params[:review], lover_id: params[:lover_id], artwork_id: params[:artwork_id]).to_json
end

# delete a review
  delete "/reviews/:id" do
  review = Review.find(params[:id])
  review.destroy
  {message: "Review deleted :) "}.to_json
end

end