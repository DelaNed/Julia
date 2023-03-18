#!/bin/bash
using ProgressBars
using Random
import REPL
using REPL.TerminalMenus


function generate_passwords()
    num_passwords_options = ["1","2","3","4"]
    password_length_options = ["6","8","10"]
    num_passwords_menu = RadioMenu(num_passwords_options)
    # password_length_menu = MultiSelectMenu(password_length_options)
    password_length_menu = RadioMenu(password_length_options)
    num_passwords_choices = request("How many passwords do you want to generate?", num_passwords_menu)
    password_length_choices = request("How long should each password be?", password_length_menu)
    num_passwords = parse(Int64, num_passwords_options[num_passwords_choices])
    password_length = parse(Int64,password_length_options[password_length_choices])
    # print("How many passwords do you want to generate?")
    # num_passwords = readline()
    # println("How long should each password be?")
    # password_length = readline()
    password_holder = []

    # Generate a progress bar to show how close we are to being done
    for i in ProgressBar(1:num_passwords)
        # Add the new password into the password holder
        push!(password_holder, randstring(password_length))
        sleep(0.2) # Manually slowdown the generation of passwords
    end
    
    # Only show the passwords if there are less than 100
    if length(password_holder) <= 100
        # Loop through each password one by one
        for password in password_holder
            print("\n", password)
        end
    end
end