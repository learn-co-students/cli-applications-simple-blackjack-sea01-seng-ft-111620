def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11).round()
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times {total += deal_card}
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  userInput = get_user_input
  
  until userInput == 's' || userInput == 'h'
    invalid_command
    prompt_user
    userInput = get_user_input
  end
  
  if userInput == 's'
    total
  elsif userInput == 'h'
    total += deal_card
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end
end_game(score)
end
    
