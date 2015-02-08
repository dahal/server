class Dashboard::SurveysController < Dashboard::BaseController
  layout 'dashboard'

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create(survey_params)
    @survey.survey_hash = SecureRandom.urlsafe_base64.downcase
    @survey.save

    redirect_to dashboard_survey_path(@survey.survey_hash)
  end

  def show
    @survey = Survey.where(survey_hash: params[:id]).first
  end

  def update

  end

  def delete

  end

  private
  def survey_params
    params.require(:survey).permit(:company_name, :email_from, :reply_to_email, :survey_subject, :survey_body, :survey_body_color, :button_text_color, :brand_logo)
  end
end