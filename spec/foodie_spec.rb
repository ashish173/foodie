# for including the file lib/foodie.rb
require 'foodie'

describe Foodie::Food do
  it "broccoli is gross" do
    Foodie::Food.portray("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Foodie::Food.portray("NOt Broccolli").should eql("Delicious!")
  end
end
