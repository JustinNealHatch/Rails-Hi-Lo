class GameController < ApplicationController
  skip_before_action :verify_authenticity_token

  def try
    cookies[:number] = 7
    cookies[:counter] = cookies[:counter].to_i
    cookies[:counter] += 1
    @cookies_counter = cookies[:counter]


    if params[:number].to_i > cookies[:number].to_i
      @result_string = "Lower"
    elsif params[:number].to_i < cookies[:number].to_i
      @result_string = "Higher"
    else
      @result_string = "Win"
    end
  end

  def reset
    @cookies_counter = 0
    cookies[:counter] = @cookies_counter
    redirect_to '/try'
  end

  def default
    render 'try'
  end
end
