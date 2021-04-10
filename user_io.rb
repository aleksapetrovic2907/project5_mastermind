require_relative 'messages.rb'
class UserIO
    include Messages

    def self.rounds?
        puts HOW_MANY_ROUNDS
        rounds = gets.chomp.to_i

        return rounds if rounds.between?(6, 12)
        
        puts INVALID_ROUNDS
        rounds?
    end

    def self.write_combination
        puts ASK_FOR_COMBINATION
        input = gets.chomp

        unless input.match(/^[1-6]{4}$/) 
            puts INVALID_COMBINATION
            self.write_combination()
        end
        return input
    end
    
    def self.print_comparison(comparison)
        comparison["correct"].times { print " ○".red }
        comparison["misplaced"].times { print " ○".cyan}
        print "\n"
    end

    def self.finished(status)
        puts WIN if status == "won"
        puts LOSE if status == "lost"
    end

    def self.play_again?
        puts PLAY_AGAIN
        input = gets.chomp.downcase

        if input == "y"
            return true
        elsif input == "n"
            return false
        else
            puts INVALID INPUT
            self.play_again?
        end
    end

end