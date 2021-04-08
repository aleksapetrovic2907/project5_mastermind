require_relative 'logic.rb'
require_relative 'messages.rb'

class CodeBreaker
    include Logic
    include Messages

    def initialize
        @code = random_combination
        @player_input = nil
        @rounds = 12
    end

    def start
        @rounds.times do
            play_round()
        end
    end

    def play_round
        @player_input = get_combination_input()
        puts compare_combination(@player_input, @code)
    end
end