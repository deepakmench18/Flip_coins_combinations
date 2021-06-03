declare -A res
echo "Enter n for the loop "
read n
hh=0
ht=1
th=2
tt=3
res+=( ['hhh']=0 ['hht']=0 ['hth']=0 ['thh']=0 ['htt']=0 ['tht']=0 ['tth']=0 ['ttt']=0 )
hhh=0
hht=1
hth=2
thh=3
htt=4
tht=5
tth=6
ttt=7
for (( i=0;i<n;i++ ))
do
   toss=$((RANDOM%4))
   if [ $toss -eq $hh ]
   toss=$((RANDOM%8))
   if [ $toss -eq $hhh ]
   then
       res['hh']=$(("${res['hh']}"+1))
   elif [ $toss -eq $ht ]
       res['hhh']=$(("${res['hhh']}"+1))
   elif [ $toss -eq $hht ]
   then
       res['ht']=$(("${res['ht']}"+1))
   elif [ $toss -eq $th ]
       res['hht']=$(("${res['hht']}"+1))
   elif [ $toss -eq $hth ]
   then
       res['th']=$(("${res['th']}"+1))
       res['hth']=$(("${res['hth']}"+1))

   elif [ $toss -eq $thh ]
   then
       res['thh']=$(("${res['thh']}"+1))
   elif [ $toss -eq $htt ]
   then
       res['htt']=$(("${res['htt']}"+1))
   elif [ $toss -eq $tht ]
   then
       res['tht']=$(("${res['tht']}"+1))
   elif [ $toss -eq $tth ]
   then
       res['tth']=$(("${res['tth']}"+1))

   else
       res['tt']=$(("${res['tt']}"+1))
       res['ttt']=$(("${res['ttt']}"+1))

   fi
done
hhcnt="${res['hh']}"
htcnt="${res['ht']}"
ttcnt="${res['tt']}"
hhhcnt="${res['hhh']}"
hhtcnt="${res['hht']}"
hthcnt="${res['hth']}"
thhcnt="${res['thh']}"
httcnt="${res['htt']}"
thtcnt="${res['tht']}"
tthcnt="${res['tth']}"
tttcnt="${res['ttt']}"


hhhpercent=$((($hhhcnt*100)/$n))
hhtpercent=$((($hhtcnt*100)/$n))
hthpercent=$((($hthcnt*100)/$n))
thhpercent=$((($thhcnt*100)/$n))
httpercent=$((($httcnt*100)/$n))
thtpercent=$((($thtcnt*100)/$n))
tthpercent=$((($tthcnt*100)/$n))
tttpercent=$((($tttcnt*100)/$n))

echo "hhh=$hhhpercent%"
echo "hht=$hhtpercent%"
echo "hth=$hthpercent%"
echo "thh=$thhpercent%"
echo "htt=$httpercent%"
echo "tht=$thtpercent%"
echo "tth=$tthpercent%"
echo "ttt=$tttpercent%"

hhpercent=$((($hhcnt*100)/$n))
htpercent=$((($htcnt*100)/$n))
ttpercent=$((($ttcnt*100)/$n))
thpercent=$((100-$hhpercent-$htpercent-$ttpercent))
headpercent=$((100-$ttpercent-($thpercent+$htpercent)/2))
echo "hh=${res['hh']}"
echo "ht=${res['ht']}"
echo "th=${res['th']}"
echo "tt=${res['tt']}"
echo "hh=$hhpercent%"
echo "ht=$htpercent%"
echo"th=$thpercent%"
echo "tt=$ttpercent%"
headpercent=$(($hhhpercent+($hhtpercent+$hthpercent+$thhpercent+$httpercent+$thtpercent+$tthpercent)/2))
echo "heads=$headpercent%"
echo "tails=$((100-$headpercent))%"
