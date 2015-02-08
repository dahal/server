class Dashboard::SurveysController < Dashboard::BaseController
  layout 'dashboard'

  def index

  end

  def new
    @survey = Survey.new
  end

  def create
    require 'pry'; binding.pry

  end

  def update

  end

  def delete

  end

  private
  def survey_params
    # params.require(:survey).permit(:title, :description,:brand_logo, :body_text, :body_text_color, :brand_color, :button_color )
  end
end
