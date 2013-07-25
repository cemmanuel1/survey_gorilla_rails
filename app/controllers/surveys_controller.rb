class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
    # 3.times do 
    #   @survey.questions.build
    # end
  end

  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show

  end

end
