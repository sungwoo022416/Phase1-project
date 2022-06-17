#!/usr/bin/env ruby
require_relative '../config/environment'
require 'pry'

welcome

PROMPT.keypress("Press any key to continue".upcase, timeout: 20)

loop do
    pic
    case option_select
    when 1
        team_choice
    when 2
        player_choice
    when 3
        sign_contract 
    when 4
        delete_contract
    when 5
        modify_contract
    end
    
    PROMPT.keypress("Press any key to continue".upcase, timeout: 20)
    puts("
    ╭━━━┳━━━┳━━━╮╭╮╱╱╭┳━━━┳╮╱╭╮╭━━━┳━━━┳━╮╱╭┳━━━┳━━━╮
    ┃╭━╮┃╭━╮┃╭━━╯┃╰╮╭╯┃╭━╮┃┃╱┃┃╰╮╭╮┃╭━╮┃┃╰╮┃┃╭━━┫╭━╮┃
    ┃┃╱┃┃╰━╯┃╰━━╮╰╮╰╯╭┫┃╱┃┃┃╱┃┃╱┃┃┃┃┃╱┃┃╭╮╰╯┃╰━━╋╯╭╯┃
    ┃╰━╯┃╭╮╭┫╭━━╯╱╰╮╭╯┃┃╱┃┃┃╱┃┃╱┃┃┃┃┃╱┃┃┃╰╮┃┃╭━━╯╱┃╭╯
    ┃╭━╮┃┃┃╰┫╰━━╮╱╱┃┃╱┃╰━╯┃╰━╯┃╭╯╰╯┃╰━╯┃┃╱┃┃┃╰━━╮╱╭╮
    ╰╯╱╰┻╯╰━┻━━━╯╱╱╰╯╱╰━━━┻━━━╯╰━━━┻━━━┻╯╱╰━┻━━━╯╱╰╯ back to main page (any key)/exit")
    response = gets.chomp

    if response == "exit"
        puts "
        ╭━━╮╱╱╱╱╱╱╱╱╭━━╮╱╱╱╱╱╱╱╭┳┳╮
        ┃╭╮┃╱╱╱╱╱╱╱╱┃╭╮┃╱╱╱╱╱╱╱┃┃┃┃
        ┃╰╯╰┳╮╱╭┳━━╮┃╰╯╰┳╮╱╭┳━━┫┃┃┃
        ┃╭━╮┃┃╱┃┃┃━┫┃╭━╮┃┃╱┃┃┃━╋┻┻╯
        ┃╰━╯┃╰━╯┃┃━┫┃╰━╯┃╰━╯┃┃━╋┳┳╮
        ╰━━━┻━╮╭┻━━╯╰━━━┻━╮╭┻━━┻┻┻╯
        ╱╱╱╱╭━╯┃╱╱╱╱╱╱╱╱╭━╯┃
        ╱╱╱╱╰━━╯╱╱╱╱╱╱╱╱╰━━╯"
        break
    end
end

