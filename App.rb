require 'colorize'

require_relative 'user'
require_relative 'game'

class App 
  attr_accessor :user 

  def initialize
    welcome
    @user = create_user
  end

  def welcome
    puts "Welcome to my App".green
    puts "Let's get started".green
  end

  def create_user
    puts "What is your first name?".cyan
    f_name = gets.strip
    puts "What is your last name?".blue
    l_name = gets.strip
    puts "How old are you?".blue
    age = gets.strip.to_i

    @user = User.new(f_name, l_name, age)
    # puts @user.first_name
    # puts @user.last_name
    # puts @user.age
    menu
  end

  def menu 
    puts "1. Play a game to change your age".yellow
    puts "2. Exit".red
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