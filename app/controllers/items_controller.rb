class ItemsController < ApplicationController
  def show
    response = Faraday.get("http://localhost:3000/api/v1/items/#{params[:id]}")
    @item = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
