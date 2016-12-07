class Dashboard::SurveysController < Dashboard::BaseController
  layout 'dashboard'

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      # redirect_to dashboard_survey_path(@survey.survey_hash)
      redirect_to dashboard_survey_path(@survey.id)
    else
      render :new
    end
  end

  def show
    # @survey = Survey.where(survey_hash: params[:id]).first
    @survey = Survey.find(params[:id])
  end

  def update

  end

  def delete

  end

  private
  def survey_params
    params.require(:survey)
          .permit(
            :brand_name,
            :brand_color,
            :company_name,
            :email_from,
            :reply_to_email,
            :survey_subject,
            :survey_body,
            :survey_body_color,
            :button_text_color,
            :brand_logo
          )
  end
end
