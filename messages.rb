require_relative 'format.rb'

module Messages
    # other text
    INTRO = "Welcome to Mastermind! Lets crack the code!".blue
    INSTRUCTIONS = " ○".red + " - means one correct digit\n" + " ○".cyan + " - means one misplaced digit"
    WIN = "Congratulations!".magenta + " You have cracked the code!"
    LOSE = "Aww! You have " + "not ".red + "cracked the code.."
    PLAY_AGAIN = "Would you like to play again? " + "(y/n)".green

    # rounds
    HOW_MANY_ROUNDS = "How many rounds would you like? " + "(6 - 12)".green
    INVALID_ROUNDS = "Amount of rounds need to be between 6 and 12.".red

    # combination
    ASK_FOR_COMBINATION = "Write out" + " 4 ".green + "digits from " + "1-6".green + " (unspaced):"
    INVALID_COMBINATION = "This is an invalid combination.".red
end