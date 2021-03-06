require_relative 'user_io.rb'
require_relative 'codebreaker.rb'
require_relative 'messages.rb'

class Mastermind
    include Messages

    def play
        UserIO.clear_screen
        puts INTRO
        puts INSTRUCTIONS
        breaker = CodeBreaker.new(UserIO.rounds?)
        breaker.start()
    end
end