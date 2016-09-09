class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def move(start_pos, end_pos)
    piece = @towers[start_pos].last
    if valid_move?(start_pos, end_pos)
      @towers[end_pos] << piece
      @towers[start_pos].pop
      return true
    end
    return false
  end

  def valid_move?(start_pos, end_pos)
    return true if @towers[end_pos].empty?
    @towers[start_pos].last < @towers[end_pos].last
  end

  def won?
    p "curr tower: #{@towers}"
    return true if @towers.last == [3, 2, 1]
    return false
  end

  def play
    while true
      render
      puts "please select a starting post, and ending post"
      user_input = gets.chomp.split(",")
      move(user_input.first.to_i, user_input.last.to_i)
      render
      break if won? 
    end
    puts "Congrats!  You won!"
  end

  def render
    @towers.each do |tower|
      p "#{tower}"
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  game = TowersOfHanoi.new
  game.play
end
