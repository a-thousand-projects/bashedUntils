#! /usr/bin/env bash
   

drawBox ()
{
    local length=$1
    local height=$2
    local topleft="╭"
    local topright="╮"
    local btmleft="╰"
    local btmright="╯"
    local horz="─"
    local vert="│"
    local space=""
    
    toprow=($topleft $horz $topright)
    midrow=($vert $space $vert)
    btmrow=($btmleft $horz $btmright)


    local bar=""
    # Print top row

    printf -v top  '%s%*s%s\n\r' "$topleft" "$length" '' "$topright"
    local top=${top// /$horz}
    printf '%s' "$top"


    # Print middle row
    printf -v mid '%s%*s%s\n\r' "$vert" "$length" "" "$vert" 
   
    for i in $(seq 1 $height) ; do
        printf "%s" "$mid"
    done

    # Print bottom row
    printf -v bottom  '%s%*s%s\n\r' "$btmleft" "$length" '' "$btmright"
    local bottom=${bottom// /$horz}
    printf '%s' "$bottom"
}
        


tput clear
tput setaf 3
drawBox 80 1 

