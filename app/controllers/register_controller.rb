class RegisterController < ApplicationController
  def index
  end

  def create
    query = params[:query]

    result = HaveIBeenPwnedApi.new(query).call
  end
end
