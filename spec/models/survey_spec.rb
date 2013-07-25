require "spec_helper"

describe Survey do
  it {should validate_presence_of(:title)}
  it {should have_many(:questions)}
  it {should accept_nested_attributes_for(:questions)}
end
