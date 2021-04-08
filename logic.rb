require_relative 'messages.rb'
module Logic
    def random_combination
        (Array.new(4) { rand(1..6) }).join()
    end

    def get_combination_input
        puts message_alert('ask_for_input')
        input = gets.chomp

        unless input.match(/^[1-6]{4}$/) 
            puts message_warning('invalid_combination')
            get_combination_input()
        end
        return input
    end

    def compare_combination(guess_comb, actual_comb)
        correct_spots = 0; misplaced_spots = 0;
        # check for correct spots
        4.times do |index|
            correct_spots += 1 if guess_comb[index] == actual_comb[index]
        end
        # check for misplaced spots
        # return number of correct and misplaced spots
    end
end