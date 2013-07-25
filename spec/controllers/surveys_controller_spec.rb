require 'spec_helper'

describe SurveysController do

  describe "GET 'index'" do
    it "should be successful" do 
      get 'index' do
        response.should be_success
      end
    end
  end


  describe "GET 'new'" do 
    it "should be successful" do
      get 'new' do
        response.should be_success
      end
    end
  end

  context "POST 'create'" do 


    it "should create a survey and redirect to root path" do
      survey = mock_model(Survey, :save => true)
      Survey.stub(:new) { survey }
      post :create, :survey => { :title => 'blah' }
      response.should redirect_to(root_path)
    end
  end

  it "should redirect to new when not saved" do
     survey = mock_model(Survey, :save => false)
      Survey.stub(:new) { survey }
      post :create, :survey => {}
      flash.should_not be_nil
      response.should redirect_to(new_survey_path)
    end
end
