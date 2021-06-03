heads=1
tails=0
declare -A res

toos=$((RANDOM%2))
echo "Enter n for the loop "
read n
for (( i=0;i<n;i++ ))
do
   toos=$((RANDOM%2))
   if [ $toos -eq $heads ]
   then
       res['heads']=$(("${res['heads']}"+1))
   else
       res['tails']=$(("${res['tails']}"+1))

if [ $toos -eq $heads ]
then
   echo "Heads win"
else
   echo "Tails win "
fi
   fi
done
headcnt=$(($n-${res['heads']}))
headpercent=$((($headcnt*100)/$n))
tails=${res['tails']}
heads=${res['heads']}

echo " $tails and $head "
echo " tails = $headpercent% and head = $((100-$headpercent))%" 
