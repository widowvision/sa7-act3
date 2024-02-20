class Game
  ROOM_POINTS = [5, 10, 15]

  def initialize
    @total_points = 0
  end

  def play
    puts "Welcome to the Adventure Game!"
    puts "You have #{@total_points} points."

    loop do
      print "Choose a room (1-3) to enter or 'exit' to end the game: "
      choice = gets.chomp.downcase

      case choice
      when '1', '2', '3'
        room_number = choice.to_i - 1
        enter_room(room_number)
      when 'exit'
        break
      else
        puts "Invalid choice. Please enter 1, 2, 3, or 'exit'."
      end
    end

    puts "Game over! You collected a total of #{@total_points} points."
  end

  private

  def enter_room(room_number)
    points = ROOM_POINTS[room_number]
    @total_points += points
    puts "You entered Room #{room_number + 1} and earned #{points} points."
  end
end

Game.new.play
