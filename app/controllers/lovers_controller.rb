class LoversController < ApplicationController

 # get all lovers
 get "/lovers" do
  Lover.all.to_json
end

# create a lover
post "/lovers" do
  lover = Lover.create(name: params[:name], occupation: params[:occupation])
  lover.to_json
end

# update a lover
patch "/lovers/id" do
  lover = Lover.find(params[:id])
  lover.update(name: params[:name], occupation: params[:occupation]).to_json
end

# delete a review
  delete "/lovers/:id" do
  lover = Lover.find(params[:id])
  lover.destroy
  {message: "Lover deleted :) "}.to_json
end



end