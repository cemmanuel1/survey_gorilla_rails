require 'spec_helper'

describe Question do
  it {should validate_presence_of(:content)}
  it {should belong_to(:survey)}
end



