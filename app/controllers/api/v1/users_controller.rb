class API::V1::UsersController < API::BaseController
  def index
    @users = User.all
    render json: @users
  end
end