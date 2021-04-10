require_relative 'logic.rb'
require_relative 'user_io.rb'

class CodeBreaker
    include Logic

    def initialize(rounds)
        @code = random_combination()
        @rounds = rounds
        @player_input = nil
        @game_status = "lost"
    end

    def start
        @rounds.times do
            play_round()
        end

        finish()
    end

    private
    def play_round
        get_input()
        compare_and_print_results()
    end

    def get_input
        @player_input = UserIO.write_combination
    end

    def compare_and_print_results
        comparison = compare_combination(@player_input, @code)
        UserIO.print_comparison(comparison)

        @game_status = "won" if comparison["correct"] == 4
        finish() if @game_status == "won"
    end

    def finish
        UserIO.finished(@game_status)
        if UserIO.play_again?
            return nil # :/
        else
            return nil # :/
        end
    end
    
end