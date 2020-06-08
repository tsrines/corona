class Api::V1::FavoritesController < ApplicationController

  def create
    location = Location.find_or_create_by(
      slug: params[:slug], 
      long: params[:long], 
      lat: params[:lat]
      )
    
    if session_user

    favorite = Favorite.create(user: session_user, location_id: location.id)
    render json: favorite
    else 
      render json: {error: "You aren't logged in, to save locations, sign up / login"}
    end
  end

  def destroy
    favorite = Favorite.all.find(params[:id])
    favorite.destroy

    head :no_content
  end


  private

  def favorite_params 
    params.require(:favorite).permit(:user_id, :location_id)
  end

  def location_params
    params.require(:location).permit(:slug, :lat, :long)
  end
end