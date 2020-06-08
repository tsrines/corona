class Api::V1::StatesController < ApplicationController

  def index
    res = RestClient.get('https://corona.lmao.ninja/v2/states')
    states = res.body
    render json: states
  end

  def usacounties
    res = RestClient.get('https://corona.lmao.ninja/v2/historical/all/')
    puts JSON.parse(res.body)
    render json: res.body

  end

  def historical
    res = RestClient.get('https://corona.lmao.ninja/v2/historical/all/')
    historical = res.body
    render json: historical
  end

  def jhu_county_data
    counties = RestClient.get('https://corona.lmao.ninja/v2/jhucsse/counties').body
    render json: counties
  end
end
