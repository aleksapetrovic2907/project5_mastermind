require_relative 'messages.rb'
class UserIO
    include Messages

    def self.set_rounds
        puts HOW_MANY_ROUNDS
        rounds = gets.chomp.to_i

        return rounds if rounds.between?(6, 12)
        
        puts INVALID_ROUNDS
        set_rounds
    end

    def self.write_combination
        puts ASK_FOR_COMBINATION
        input = gets.chomp

        unless input.match(/^[1-6]{4}$/) 
            puts INVALID_COMBINATION
            self.write_combination
        end
        return input
    end
    
    def self.print_comparison(comparison)
        puts "Correct: #{comparison["correct"]}"
        puts "Misplaced: #{comparison["misplaced"]}"
    end

    def self.finished
end