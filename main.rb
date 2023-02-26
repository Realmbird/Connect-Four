require_relative './lib/Connect.rb'
def main
  loop do
    connect = Connect.new 
    connect.game
    break if !continue
  end
end
def continue()
  loop do
    puts "yes (y) or no (n) continue?"
    cont = gets.chomp
    return true if cont == "y"
    return false if cont == "n"
  end
end

main