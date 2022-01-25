class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "This is the main page." }.to_json
  end

  get "/artworks" do
    Artwork.all.to_json
  end

  get "/artworks/:id" do
    Artwork.find(params[:id].to_json)
  end

  get "/new" do
    { message: "Good luck with your project!" }.to_json
  end

end
