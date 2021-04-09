require_relative 'user_io.rb'
require_relative 'codebreaker.rb'

class Mastermind
    INTRO = "Welcome to Mastermind, lets crack the code!"

    def play
        puts INTRO
        breaker = CodeBreaker.new(UserIO.set_rounds)
        breaker.start()
    end
end