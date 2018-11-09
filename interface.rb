module Interface

  MENU = {
    1 => 'pass'
    2 => 'player.take_card'
    3 => 'open_cards'
  }.freeze

  def run
    loop do
      info
      puts 'Введите пункт меню:'
      choice = gets.to_i
      send(command(choice))
    end
  end

  def info
    puts '1. Пропусить ход'
    puts '2. Взять карту'
    puts '3. Открыть карты'
  end

  def command(cmd)
    MENU[cmd].to_s
  end
end