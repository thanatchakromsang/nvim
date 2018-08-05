# logo
logo="$FG[red]
 ██████╗ ██╗██████╗ ███████╗     $FG[white]╒ Command ════════════════════════════════════════╕ $FG[green]
 ██╔══██╗██║██╔══██╗██╔════╝     $FG[white] ~ wiki    - open wiki management page              $FG[yellow]
 ██████╔╝██║██████╔╝█████╗       $FG[white] ~ diary   - open today scratchpad                  $FG[green]
 ██╔═══╝ ██║██╔═══╝ ██╔══╝       $FG[white] ~ j       - jump between project instead of cd     $FG[pink]
 ██║     ██║██║     ███████╗     $FG[white] ~ nvmload - change npm version in current directory$FG[blue]
 ╚═╝     ╚═╝╚═╝     ╚══════╝     $FG[white] ~ magit   - git commit control in vim              $FG[magenta]
     ███████╗███████╗██╗  ██╗    $FG[white]╘═════════════════════════════════════════════════╛ $FG[cyan]
     ╚══███╔╝██╔════╝██║  ██║    $FG[white]                                                    $FG[white]
       ███╔╝ ███████╗███████║    $FG[white]                                                    $FG[red]
      ███╔╝  ╚════██║██╔══██║    $FG[white]                                                    $FG[green]
     ███████╗███████║██║  ██║    $FG[white]                                                    $FG[yellow]
     ╚══════╝╚══════╝╚═╝  ╚═╝    $FG[white]
 "

# capacity
g_capacity="☉ $FG[white]Capacity : $FG[cyan]`df -h ~ | awk '{if ($1 != "Filesystem") print $1 " Used: "$3 ", Avail: "$4}'`"

# date time
g_date="☉ $FG[white]Today    : $FG[cyan]`date`$FG[cyan]"

# print
print -P $logo
print -P $g_capacity
print -P $g_date
