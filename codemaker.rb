require_relative 'logic.rb'
require_relative 'messages.rb'

class CodeBreaker
    include Logic
    include Messages

    def initialize
        @code = nil
        @rounds = 12
    end

    def start
        @code = get_combination_input()
        @rounds.times do
            play_round()
        end
    end

    def play_round
        puts compare_combination(random_combination(), @code)
    end
end