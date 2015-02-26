class Api::V1::SendSurveyController < Api::BaseController
  before_action :authenticate!

  # POST /v1/send_survey
  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      render :json => @participant.to_json
    else
      render :json => { :errors => @participant.errors.full_messages }
    end
  end

  private
  def send_survey_params
    params.require(:send_survey).permit(:email, :survey_id, :wait_for)
  end

  def participant_params
    params.require(:send_survey).permit(:email, :survey_id)
  end
end
