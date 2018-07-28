# logo
logo="$fg_bold[red]
 ██████╗ ██╗██████╗ ███████╗     $fg_bold[white]╒ Command ════════════════════════════════════════╕$fg_bold[green]
 ██╔══██╗██║██╔══██╗██╔════╝     $fg[white] ~ wiki    - open wiki management page                  $fg_bold[yellow]
 ██████╔╝██║██████╔╝█████╗       $fg[white] ~ diary   - open today scratchpad                      $fg_bold[green]
 ██╔═══╝ ██║██╔═══╝ ██╔══╝       $fg[white] ~ j       - jump between project instead of cd         $fg_bold[pink]
 ██║     ██║██║     ███████╗     $fg[white] ~ nvmload - change npm version in current directory    $fg_bold[blue]
 ╚═╝     ╚═╝╚═╝     ╚══════╝     $fg[white] ~ magit   - git commit control in vim                  $fg_bold[magenta]
     ███████╗███████╗██╗  ██╗    $fg_bold[white]╘═════════════════════════════════════════════════╛$fg_bold[cyan]
     ╚══███╔╝██╔════╝██║  ██║    $fg[white]                                                        $fg_bold[white]
       ███╔╝ ███████╗███████║    $fg[white]                                                        $fg_bold[red]
      ███╔╝  ╚════██║██╔══██║    $fg[white]                                                        $fg_bold[green]
     ███████╗███████║██║  ██║    $fg[white]                                                        $fg_bold[yellow]
     ╚══════╝╚══════╝╚═╝  ╚═╝    $fg[white]
 "

# capacity
g_capacity="☉ $fg[white]Capacity : $fg[cyan]`df -h ~ | awk '{if ($1 != "Filesystem") print $1 " Used: "$3 ", Avail: "$4}'`"

# date time
g_date="☉ $fg[white]Today    : $fg[cyan]`date`$fg[cyan]"

# print
print -P $logo
print -P $g_capacity
print -P $g_date
