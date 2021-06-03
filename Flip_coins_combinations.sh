heads=1
tails=0
toos=$((RANDOM%2))

if [ $toos -eq $heads ]
then
   echo "Heads win"
else
   echo "Tails win "
fi
