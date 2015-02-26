class Api::V1::Survey::SendController < Api::BaseController
  before_action :authenticate!

  def create
    # Do stuffs with it
    require "pry"; binding.pry
  end

  private
  def send_params
    params.require(:send).permit(:email, :survey, :wait_for)
  end
end
