require 'rspec'
require 'towers_of_hanoi'


describe TowersOfHanoi do
  let(:game) {TowersOfHanoi.new}
  let(:towers) {game.towers}

  # initial_array = [[3, 2, 1], [], []]
  # final_array = [[], [], [3, 2, 1]]
  describe "#move" do
    before(:each) do
      game.move(0,1)
    end

    it "checks the first move" do
      expect(towers.first).to eq([3, 2])
      expect(towers[1]).to eq([1])
      expect(towers.last).to eq([])
    end

    it "checks if won?" do
      towers[0] = []
      towers[2] = [3,2,1]
      expect(game.won?).to be(true)
    end
  end
end
