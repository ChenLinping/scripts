#!/bin/bash
for X in $(find . -name *.java) 
do  
    if file "$X"|egrep "utf-8"     then      
       echo "$X is utf-8, no need to transfer"    
    else        
       iconv -f GBK -t UTF-8 "$X" > "$X utf8"      
       rm "$X"      
       mv "$X utf8" "$X"  
     fi
done

