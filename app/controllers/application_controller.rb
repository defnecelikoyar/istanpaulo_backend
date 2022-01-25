class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/artworks" do
    Artwork.all.to_json({include: :artist})
  end

  get "/artworks/:id" do
    Artwork.find(params[:id].to_json)
  end

  post "/artworks" do
    artwork = Artwork.create(title: params[:title], artist: params[:artist], date: params[:date], description: params[:description])
    artwork.to_json
  end

  patch "/artworks/:id" do
    artwork = Artwork.find(params[:id])
    artwork.update(description: params[:description])
    artwork.to_json
  end

  delete "/artworks/:id" do
    artwork = Artwork.find(params[:id])
    artwork.destroy
    artwork.to_json
  end

end
