module Interface

  MENU = {
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
  end

  def command(cmd)
    MENU[cmd].to_s
  end
end