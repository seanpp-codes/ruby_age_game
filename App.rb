require_relative 'user'
require_relative 'game'

class App 
  attr_accessor :user 

  def initialize
    welcome
    @user = create_user
  end

  def welcome
    puts "Welcome to my App"
    puts "Let's get started"
  end

  def create_user
    puts "What is your first name?"
    f_name = gets.strip
    puts "What is your last name?"
    l_name = gets.strip
    puts "How old are you?"
    age = gets.strip.to_i

    @user = User.new(f_name, l_name, age)
    # puts @user.first_name
    # puts @user.last_name
    # puts @user.age
    menu
  end

  def menu 
    puts "1. Play a game to change your age"
    puts "2. Exit"
    menu_choice = gets.strip.to_i 

    if menu_choice == 1 
      # puts "game"
      Game.new(@user)
      menu
    elsif menu_choice == 2
      puts "Good Bye"
      exit
    else
      menu
    end
  end
end

app = App.new