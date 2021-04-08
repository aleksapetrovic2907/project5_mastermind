module Messages
    def message_alert(type)
        case type
        when 'ask_for_input'
            "Write out 4 digits from 1-6 (unspaced):"
        end
    end

    def message_warning(type)
        case type
        when 'invalid_option'
            "This is an invalid option"
        when 'invalid_combination'
            "This is an invalid combination."
        end
    end
end