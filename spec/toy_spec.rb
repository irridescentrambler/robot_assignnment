require_relative "spec_helper.rb"
require "./toy.rb"

RSpec.describe "Testing Toy class" do
  before(:each) do
    @toy = Toy.new(1,2,"North")
  end

  it "should return toy instance" do
    expect(@toy).should_not be_nil
  end

  it "should move toy forward" do
    @toy.move
    expect(@toy.yco_ordinate).to eq(3)
  end


  it "should move toy left" do
    @toy.left
    expect(@toy.direction).to eq("west")
  end

  it "should move toy right" do
    @toy.right
    expect(@toy.direction).to eq("east")
  end

  it "should report toy's current coordinates and direction" do
    xco_ordinate, yco_ordinate, direction = @toy.report
    expect(xco_ordinate).to eq(1)
    expect(yco_ordinate).to eq(2)
    expect(direction).to eq("north")
  end
end