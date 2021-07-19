class RegisterController < ApplicationController
  def index
  end

  def create
    query = params[:query]

    result = HaveIBeenPwnedApi.new(query).call

    flash[:alert] = result ? "Sorry :(, This password has been pwned" : ":), Approved"

    redirect_to action: :index
  end
end
