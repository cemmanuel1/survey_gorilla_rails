require 'spec_helper'

describe "Index Page" do
  let(:title) {"fart"}
  let!(:survey) {Survey.create(title: title)}

  before(:each) do
    visit root_path
    click_link("Create New Survey")
  end

  it "should redirect to new survey page" do
    expect(page).to have_content "Create a New Survey"
    expect(page).to have_content "Title"
    expect(page).to have_button "Create Survey"
  end

  it "can goto new survey page and create survey" do
    fill_in('survey[title]', :with => title)
    click_button("Create Survey")
    expect(page).to have_content "fart"
  end

  

end
