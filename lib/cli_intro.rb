require 'tty-prompt'
require 'colorize'


PROMPT = TTY::Prompt.new

def welcome
    puts "                                    
                                                                                                            ░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗  ████████╗░█████╗░
                                                                                                            ░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝  ╚══██╔══╝██╔══██╗
                                                                                                            ░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░  ░░░██║░░░██║░░██║
                                                                                                            ░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░  ░░░██║░░░██║░░██║
                                                                                                            ░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗  ░░░██║░░░╚█████╔╝
                                                                                                            ░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝  ░░░╚═╝░░░░╚════╝░
                                                                        
                                                                                                            ██████╗░░█████╗░░██████╗██╗░░██╗███████╗████████╗██████╗░░█████╗░██╗░░░░░██╗░░░░░
                                                                                                            ██╔══██╗██╔══██╗██╔════╝██║░██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██║░░░░░
                                                                                                            ██████╦╝███████║╚█████╗░█████═╝░█████╗░░░░░██║░░░██████╦╝███████║██║░░░░░██║░░░░░
                                                                                                            ██╔══██╗██╔══██║░╚═══██╗██╔═██╗░██╔══╝░░░░░██║░░░██╔══██╗██╔══██║██║░░░░░██║░░░░░
                                                                                                            ██████╦╝██║░░██║██████╔╝██║░╚██╗███████╗░░░██║░░░██████╦╝██║░░██║███████╗███████╗
                                                                                                            ╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═════╝░╚═╝░░╚═╝╚══════╝╚══════╝".center(15).colorize(:blue).on_light_white
    PROMPT.keypress("Press any key to continue".upcase, timeout: 20)
                           
    puts"
                                                                                                                            __________________________________________________
                                                                                                                            ______________________1¶¶¶¶¶¶¶1___________________
                                                                                                                            _____________________1¶¶¶¶¶¶¶¶¶1__________________
                                                                                                                            ____________________1¶¶¶¶¶¶¶¶¶¶¶__________________
                                                                                                                            ____________________¶¶¶¶¶¶¶¶¶¶¶___________________
                                                                                                                            ___________________1¶¶¶¶¶¶¶¶¶¶____________________
                                                                                                                            ___________________1¶¶¶¶¶¶¶¶¶_____________________
                                                                                                                            ______111111__________1¶¶¶¶¶¶111__________________
                                                                                                                            ____1¶¶¶¶¶¶¶1__________¶¶¶¶¶¶¶¶¶¶¶1_______________
                                                                                                                            ___¶¶1111¶11¶¶______1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1_____________
                                                                                                                            __1¶1¶¶¶111¶¶¶1___1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_____________
                                                                                                                            ___¶¶¶¶¶¶¶¶1¶¶¶__¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            ___1¶¶¶¶¶¶¶¶¶¶1_1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            ____1¶¶¶¶¶¶¶¶¶1_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            _________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            __________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1___________
                                                                                                                            __________1¶¶¶1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶___________
                                                                                                                            ___________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶___________
                                                                                                                            ____________¶¶¶¶¶¶¶¶1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶___________
                                                                                                                            _____________¶¶¶¶¶¶1_1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1__________
                                                                                                                            ______________1¶¶¶1___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            ________________1______¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            ________________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            _______________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            ______________________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            ______________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1_________
                                                                                                                            _____________________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1_________
                                                                                                                            ____________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1_________
                                                                                                                            ___________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________
                                                                                                                            __________________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1__________
                                                                                                                            __________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶___________
                                                                                                                            _________________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            _________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶____________
                                                                                                                            _________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_____________
                                                                                                                            ________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_____________
                                                                                                                            _______________1¶¶¶¶¶¶¶___111¶¶¶¶¶¶¶1_____________
                                                                                                                            _______________1¶¶¶¶¶¶_______¶¶¶¶¶¶_______________
                                                                                                                            ________________¶¶¶¶¶¶_______¶¶¶¶¶1_______________
                                                                                                                            ________________¶¶¶¶¶¶1______¶¶¶¶¶¶_______________
                                                                                                                            ________________¶¶¶¶¶¶¶_______¶¶¶¶¶¶______________
                                                                                                                            ________________1¶¶¶¶¶¶________¶¶¶¶¶¶_____________
                                                                                                                            _________________¶¶¶¶¶¶________¶¶¶¶¶¶1____________
                                                                                                                            _________________¶¶¶¶¶¶_________¶¶¶¶¶1____________
                                                                                                                            _________________1¶¶¶¶1_________¶¶¶¶¶¶____________
                                                                                                                            __________________¶¶¶¶1__________¶¶¶¶¶____________
                                                                                                                            __________________¶¶¶¶___________1¶¶¶¶____________
                                                                                                                            __________________1¶¶¶____________¶¶¶¶____________
                                                                                                                            __________________1¶¶¶1___________¶¶¶¶____________
                                                                                                                            __________________¶¶¶¶¶___________1¶¶¶____________
                                                                                                                            ________________1¶¶¶¶¶¶¶__________1¶¶¶¶___________
                                                                                                                            ______________1¶¶¶¶¶¶¶¶¶1_________¶¶¶¶¶¶__________
                                                                                                                            ___________1¶¶¶¶¶¶¶¶¶¶¶¶1________1¶¶¶¶¶¶1_________
                                                                                                                            __________¶¶¶¶¶¶¶¶¶¶¶¶¶1________1¶¶¶¶¶¶¶1_________
                                                                                                                            ___________1111________________¶¶¶¶¶¶¶¶1__________
                                                                                                                            _______________________________¶¶¶¶¶¶1____________
                                                                                                                            __________________________________________________
".colorize(:blue)
end

PROMPT.keypress("Press any key to continue".upcase, timeout: 20)


def option_select
    choices = {Find_Team: 1, Find_Player: 2, Sign_Contract: 3, Terminate_Contract: 4, Modify_contract: 5}
    PROMPT.select("Please Select Option Here:", choices)
end

