require_relative 'logic.rb'
require_relative 'user_io.rb'

class CodeBreaker
    include Logic

    def initialize(rounds)
        @code = random_combination()
        @rounds = rounds
        @player_input = nil
        @game_status = "playing"
    end

    def start
        puts "THE CODE IS #{@code}"
        @rounds.times do
            play_round()
        end

        lose()
    end

    def play_round
        get_input()
        compare_and_print_results()
    end

    def get_input
        @player_input = UserIO.write_combination
    end

    def compare_and_print_results
        comparison = compare_combination(@player_input, @code)
        @game_status = "won" if comparison["correct"] == 4

        if @game_status == "won"
            win()
        else
            UserIO.print_comparison(comparison)
        end
    end

    def win
        
    end

    def lose

    end
end