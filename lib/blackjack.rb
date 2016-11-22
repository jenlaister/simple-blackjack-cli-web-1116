def welcome
  puts "Welcome to the Blackjack Table"
end
# code #welcome here

def deal_card
  rand(1..11)
end
  # code #deal_card here

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end
# code #display_card_total here


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
# code #prompt_user here

def get_user_input
  gets.chomp
end
# code #get_user_input here

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
# code #end_game here

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end
# code #initial_round here
# This method represents the first round of the game for a given player. It should call on the #deal_card method twice,
# use the #display_card_total method to puts out the sum and then return the sum. This method will therefore call on two other
# helper methods, #deal_card and #display_card_total, which takes in an argument of the sum of both invocations of #deal_card.

# deal_card
# deal_card
# card_total = sum(deal_card)
# display_card_total(card_total)

def hit?(current_card_total)
  #current_card_total = current_card_total
  prompt_user
  input = get_user_input
  if input == 's'
    return current_card_total
  elsif input == 'h'
    new_card = deal_card
    current_card_total = current_card_total + new_card
  else
    invalid_command
    #prompt_user
end
  return current_card_total
end

# code hit? here
# This method is a bit more complex. It should take in an argument of the player's current card total. So, set up your
# #hit? method to take in an argument of a number.
# Then, the method should use the #prompt_user method to prompt the user for input and the #get_user_input method to get
# and store the user's input. Now we need to implement some logic. If the player's input is 's', we don't deal a new card.
# If the player's input is 'h', we do need to deal a new card. In this case, use the #deal_card method to deal a new card
# and increment the player's card total by whatever number is returned by #deal_card.
# If the player's input is neither 'h' nor 's', call on the #invalid_command method to output the phrase "Please enter a valid
# command". Then, call on the #prompt_user method again to remind your user what a valid command is.
# In either case, our method should then return the player's current card total.

def invalid_command
  puts "Please enter a valid command"
end
# code invalid_command here

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
welcome
current_card_total = initial_round
until current_card_total > 21
  current_card_total = hit?(current_card_total)
  display_card_total(current_card_total)
end
end_game(current_card_total)
end


# code runner here
# Welcome the user
# Deal them their first two cards, i.e. their initial_round
# Ask them if they want to hit or stay
# If they want to hit, deal another card
# If they want to stay, ask them again!
# If their card total exceeds 21, the game ends.
