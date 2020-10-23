require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 's'
    num
  elsif input == 'h'
    num += deal_card
    num
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
end

def runner
  welcome
  x = initial_round
  while x <= 21
    x = hit?(x)
  end
  display_card_total(x)
  end_game(x)
end
    
