class Api::BaseController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def index
    @endpoints = [{base_url: 'https://api.pleased.io/v1'}]
    render json: @endpoints
  end
end
