     #!/bin/zsh

     # Using sed command
     seq=$(seq 100)
     for ((walk=1; walk<=100; walk++))
     do
          square=$(echo "sqrt($walk)" | bc)
          if [[ $(($square*$square)) -eq $walk ]]
          then
                    seq=$(echo "$seq" | sed "s/\b$walk\b/& => Opened/g")
          fi
     done
     echo "$seq"
     echo "\nOther doors are closed :("
