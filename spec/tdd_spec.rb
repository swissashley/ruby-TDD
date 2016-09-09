require 'rspec'
require 'tdd'

describe "#remove_dups" do
  it "returns a uniq array" do
    expect([1, 1, 2, 2, 3, 3].remove_dups).to eq([1, 2, 3])
  end
end

describe "#two_sum" do
  it "returns the index arrays that sum to 0" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  it "will convert between the row-oriented and column-oriented representations." do
    rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]
    cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]

    expect(my_transpose(rows)).to eq(cols)
  end
end

describe "#stock_picker" do
  it "outputs the most profitable day to buy and also sell by day-index" do
    stock =[20, 2, 60, 100, 5, 90]
    expect(stock_picker(stock)).to eq([1, 3])
  end
end
