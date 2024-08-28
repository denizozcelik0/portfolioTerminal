#!/bin/bash

commands=() 
isActive=true

Main(){
    StartSession
}

StartSession(){
    PrintBanner
    PrintOpeningLine
    while [ "$isActive" = true ]
    do
        AwaitCommand
    done
}

AwaitCommand(){
    read -p "host@hostname-$ " input
    commands+=("$input")  # Add the command to the commands array
    ExecuteCommand
}

ExecuteCommand(){
    case $input in 
        "")
            ExecuteEmptyCommand
        ;;
        "help")
            HelpCommandExecuted
        ;;
        "whois")
            WhoisCommandExecuted
        ;;
        "whoami")
            WhoamiCommandExecuted
        ;;
        "social")
            SocialCommandExecuted
        ;;
        "projects")
            ProjectsCommandExecuted
        ;;
        "skills")
            SkillsCommandExecuted
        ;;
        "history")
            HistoryCommandExecuted
        ;;
        "email")
            EmailCommandExecuted
        ;;
        "clear")
            ClearCommandExecuted
        ;;
        "banner")
            BannerCommandExecuted                                    
        ;;
        "date")
            DateCommandExecuted
        ;;    
        
        *)
            NotFoundCommand
        ;;
    esac
}

DateCommandExecuted(){
    date
}

BannerCommandExecuted(){
    PrintBanner
}

EmailCommandExecuted(){
    echo "                                                                     "
    echo " denizozceliq@outlook.com"
    echo "                                                                     "
}

HistoryCommandExecuted(){
    echo "                                                                     "
    echo " Command History:"
    for cmd in "${commands[@]}"; do
        echo "  $cmd"
    done
    echo "                                                                     "
}

SkillsCommandExecuted(){
    echo "                                                                     "
    echo " -- Programming Languages"
    echo " Java"
    echo " --## #######       ##"
    echo " Bash"
    echo " --## ###           ##"
    echo " JavaScript"
    echo " --## ###           ##"
    echo " Python"
    echo " --## #             ##"
    echo " Assembly"
    echo " --##               ##"
    echo " Go"
    echo " --##               ##"
    echo "                                                                     "
    echo " -- CyberSecurity"
    echo " Malware Development"
    echo " --##               ##"
    echo " Malware Analysis"
    echo " --##               ##"
    echo " Pentesting"
    echo " --## #             ##"
    echo " Reverse Engineering"
    echo " --##               ##"


}

ProjectsCommandExecuted(){
    echo "                                                                     "
    echo " This section is about to explode with content soon."
    echo "                                                                     "
}

SocialCommandExecuted(){
    echo "                                                                     "
    echo " youtube         youtube.com/@schrodinger0001"
    echo " linkedin        linkedin.com/in/deniz-özcelik-023724235/"
    echo " medium          medium.com/@denizozcelik01"
    echo " github          github.com/denizozcelik01"
    echo "                                                                     "
}

WhoamiCommandExecuted(){
    echo "                                                                     "
    echo " The paradox of “Who am I?” is: we never know, but, we constantly find out."
    echo "                                                                     "
}

WhoisCommandExecuted(){
    echo "                                                                     "
    echo " Hi there, I am Schrodinger! My real name is Deniz Özçelik. I am a second-year Management Information Systems (MIS) student at Ankara Yildirim Beyazit University. "
    echo "                                                                     "
}

ClearCommandExecuted(){
    clear
}

HelpCommandExecuted(){
    echo "                                                                     "
    echo "  whois        Who is schrodinger?"
    echo "  whoami       Who are you?"
    echo "  social       Display social networks."
    echo "  projects     Take a look at some of my work"
    echo "  skills       It is true that I have improved myself in some things."
    echo "  history      View command history"
    echo "  email        You can ask me everything"
    echo "  clear        Fix the pollution"
    echo "  date         Check the matrix time flow."
    echo "  banner       Display my amazing banner. Get ready for ASCII art!"
    echo "  help         You obviously know what is does."
    echo "                                                                     "
}

ExecuteEmptyCommand(){
    echo "Please type a command. For a list of commands, type 'help'. "
}

NotFoundCommand(){
    echo "Command '$input' not found. For a list of commands, type 'help'."
}

PrintOpeningLine(){
    echo "                                              "
    echo "For a list of commands, type 'help'."
}
       
PrintBanner(){
    echo "                         ,,__"
    echo "               ..  ..   / o._)                   .---."
    echo "              /--'/--\  \-'||        .----.    .'     '."
    echo "             /        \_/ / |      .'      '..'         '-."
    echo "           .'\  \__\  __.'.'     .'          i-._"
    echo "             )\ |  )\ |      _.'"
    echo "            // \\ // \\"
    echo "           ||_  \\|_  \\_"
    echo "           '--' '--'' '--'"
    echo "                                                              "
    echo "              __           _                             ___ __  "
    echo "         ____/ /__  ____  (_)___  ____  ____  ________  / (_) /__"
    echo "        / __  / _ \/ __ \/ /_  / / __ \/_  / / ___/ _ \/ / / //_/"
    echo "       / /_/ /  __/ / / / / / /_/ /_/ / / /_/ /__/  __/ / / ,<   "
    echo "       \__,_/\___/_/ /_/_/ /___/\____/ /___/\___/\___/_/_/_/|_|  "
    echo "                                                                 "
}

Main
