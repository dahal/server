class Api::BaseController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  before_action :authenticate!
  helper_method :current_user

  # /v1 (All Endpoints)
  def index
    @endpoints = [{ base_url: "#{ Settings.api.base }" }]
    render json: @endpoints
  end

  private
  def current_user
    @user
  end

  def authenticate!
    authenticate_or_request_with_http_token do |token, options|
      @user = User.find_by(api_key: token)
    end
  end
end
