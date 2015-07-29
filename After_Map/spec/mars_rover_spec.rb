require './rover'

describe "The Mars Rover" do

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = :N

  before(:each) do
    @rover = Rover.new
  end

  it "Starts with an default position" do
    expect(@rover.where_are_you).to eq(DEFAULT_POSITION)
  end

  it "Starts with a default direction" do
    expect(@rover.what_is_your_bearing).to eq(DEFAULT_BEARING)
  end

  describe 'When receiving an array of commands' do

    it "Moves forward with command f" do
      rover = Rover.new
      one_step_north = [0,1]

      rover.execute_commands([:f])

      expect(rover.where_are_you).to eq(one_step_north)
    end

    it "Moves backward with command b" do
      rover = Rover.new
      one_step_backwards = [0,-1]

      rover.execute_commands([:b])

      expect(rover.where_are_you).to eq(one_step_backwards)
    end
  end
end