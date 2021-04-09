module Logic
    def random_combination
        (Array.new(4) { rand(1..6) }).join()
    end

    def compare_combination(guess_comb, actual_comb)
        guess = guess_comb.dup
        actual = actual_comb.dup
        result = {
            "correct" => check_for_correctspots(guess, actual),
            "misplaced" => check_for_misplacedspots(guess, actual)
        }
        return result
    end

    private
    def check_for_correctspots(guess, actual)
        amount = 0
        4.times do |index|
            if guess[index] == actual[index]
                amount += 1 
                guess[index] = "*"
                actual[index] = "*"
            end
        end
        return amount
    end

    def check_for_misplacedspots(guess, actual)
        amount = 0
        4.times do |index_of_guess|
            4.times do |index_of_actual|
                next if index_of_guess == index_of_actual
                
                if guess[index_of_guess] == actual[index_of_actual] and (guess[index_of_guess] != "*" and actual[index_of_actual] != "*")
                    amount += 1
                    guess[index_of_guess] = "*"
                    actual[index_of_actual] = "*"
                end
            end
        end
        return amount
    end
end