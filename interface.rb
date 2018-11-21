class Interface
  def welcome_message
    puts "Welcome!\n"
  end

  def get_user_name
    print 'Please, tell us your name: '
    gets.chomp.to_s
  end

  def bet_message(user_amount, dealer_amount)
    puts "You place the bet 10$. On your amount #{user_amount}$. And dealer: #{dealer_amount}$"
  end

  def user_move_menu(user_cards, user_cards_sum, dealer_cards, add_card)
    puts "\nYour cards: #{user_cards}, summary: #{user_cards_sum}"
    puts "Dealer have a cards: #{dealer_cards}"
    puts 'Enter 1, if you want open cadrs'
    puts 'Enter 2, if you want pass the turn'
    puts 'Enterq 3, if you want add the card' if add_card
    gets.chomp.to_i
  end

  def show_cards(user_cards, user_sum, dealer_cards, dealer_sum)
    puts "\n Your cards: #{user_cards}, summary: #{user_sum}"
    puts "Dealer cards: #{dealer_cards}, summary: #{dealer_sum}\n"
  end

  def show_game_result(winner, user_name, dealer_name)
    case winner
    when :nobody
      puts 'Both of players scored 21. 10$ is not return.'
    when :draw
      puts 'Its draw.'
    when :user
      puts "Winner is #{user_name}"
    when :dealer
      puts "Winner is #{dealer_name}"
    end
  end

  def try_again_menu
    puts "\nEnter 1, if you want to play again\nEnter 2 for exit"
    gets.chomp.to_i
  end

  def dealer_win(user_amount)
    puts "On Your amount: #{user_amount}$. Not enouth to play."
  end

  def user_win(dealer_amount)
    puts "On dealer amount: #{dealer_amount}$. Congrats!"
  end
end
