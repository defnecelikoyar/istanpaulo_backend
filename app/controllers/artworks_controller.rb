class ArtworksController < ApplicationController

  # get all artworks
  get "/artworks" do
    Artwork.all.to_json
  end
  # create an artwork
  post "/artworks" do
    artwork = Artwork.create(title: params[:title], artist: params[:artist], date: params[:date], description: params[:description], imager_url: params[:imager_url])
    artwork.to_json
  end

  # update an artwork
  patch "/artworks/id" do
    artwork = Artwork.find(params[:id])
    artwork.update(title: params[:title], artist: params[:artist], date: params[:date], description: params[:description], imager_url: params[:imager_url]).to_json
  end

   # delete an artwork
  delete "/artworks/:id" do
    artwork = Artwork.find(params[:id])
    artwork.destroy
    {message: "Artwork deleted"}.to_json
  end
end