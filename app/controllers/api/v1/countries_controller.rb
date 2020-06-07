class Api::V1::CountriesController < ApplicationController


  def index 
    resp = RestClient.get('https://corona.lmao.ninja/v2/countries')
    countries = resp.body
    render json: countries
  end

  private 

  def countries_params
      params.require(:country).permit(:name)
  end

end
