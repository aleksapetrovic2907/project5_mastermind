require_relative 'textcontent.rb'
require_relative 'messages.rb'
require_relative 'codebreaker.rb'

class Mastermind
    include TextContent
    include Messages
    
    def play
        puts text_intro
        gamemode = choose_gamemode

        code_breaker if gamemode == '1'
        code_maker if gamemode == '2'
    end

    def choose_gamemode
        option = gets.chomp
        return option if option.match(/[1-2]/)

        puts message_warning('invalid_option')
        choose_gamemode
    end

    def code_breaker
        breaker = CodeBreaker.new()
        breaker.start
    end

    def code_maker
        maker = CodeMaker.new()
        maker.start
    end
end