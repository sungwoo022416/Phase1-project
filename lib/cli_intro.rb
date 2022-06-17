require "tty-prompt"


PROMPT = TTY::Prompt.new

def welcome
    puts "Welcome"
end

def option_select
    choices = {Find_Team: 1, Find_Player: 2, Sign_Contract: 3, Terminate_Contract: 4, Modify_contract: 5}
    PROMPT.select("Please Select Option Here:", choices)
end

