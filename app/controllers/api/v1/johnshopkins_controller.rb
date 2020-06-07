class Api::V1::JohnshopkinsController < ApplicationController

  def index 
    johnshopkins =  RestClient.get('https://corona.lmao.ninja/v2/jhucsse').body
    render json: johnshopkins
  end
end
