class Api::BaseController < ActionController::Metal
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  # /v1 (All Endpoints)
  def index
    @endpoints = [{ base_url: "#{ Settings.api.base }" }]
    render json: @endpoints
  end
end
