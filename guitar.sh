#!/bin/bash
#Notas musicais
#Dó(C),Ré(D),Mi(E),Fá(F),Sol(G),Lá(A),Si(B)
#Oitavas(1,2,3,4,5,6,7)
#\\ C1=33 ; C#1=35 ; D1=37 ; D#1=39 ; E1=41 ; F1=44 ; F#1=46 ; G1=49 ; G#1=52 ; A1=55 ; A#1=58 ; B1=62
#\\ C2=65 ; C#2=69 ; D2=73 ; D#2=78 ; E2=82 ; F2=87 ; F#2=93 ; G2=98 ; G#2=104 ; A2=110 ; A#2=117 ; B2=123
#\\ C3=131 ; C#3=139 ; D3=147 ; D#3=156 ; E3=165 ; F3=175 ; F#3=185 ; G3=196 ; G#3=208 ; A3=220 ; A#3=233 ; B3=247
#\\ C4=262 ; C#4=277 ; D4=294 ; D#4=311 ; E4=330 ; F4=349 ; F#4=370 ; G4=392 ; G#4=415 ; A4=440 ; A#4=466 ; B4=494
#\\ C5=523 ; C#5=554 ; D5=587 ; D#5=622 ; E5=659 ; F5=698 ; F#5=740 ; G5=784 ; G#5=831 ; A5=880 ; A#5=932 ; B5=988
#\\ C6=1047 ; C#6=1109 ; D6=1175 ; D#6=1245 ; E6=1319 ; F6=1397 ; F#6=1480 ; G6=1568 ; G#6=1661 ; A6=1760 ; A#6=1865 ; B6=1976
#\\ C7=2093 ; C#7=2217 ; D7=2349 ; D#7=2489 ; E7=2637 ; F7=2794 ; F#7=2960 ; G7=3136 ; G#7=3322 ; A7=3520 ; A#7=3729 ; B7=3951
#Tempo musical
#Semínima
SM=1
SB=$(awk -v SM="$SM" "BEGIN {print SM*4}" | sed 's/,/./') #Semibreve
MN=$(awk -v SM="$SM" "BEGIN {print SM*2}" | sed 's/,/./') #Mínima
CC=$(awk -v SM="$SM" "BEGIN {print SM/2}" | sed 's/,/./') #Colcheia
SC=$(awk -v SM="$SM" "BEGIN {print SM/4}" | sed 's/,/./') #Semicolcheia
FS=$(awk -v SM="$SM" "BEGIN {print SM/8}" | sed 's/,/./') #Fusa
SF=$(awk -v SM="$SM" "BEGIN {print SM/16}" | sed 's/,/./') #Semifusa
while true; do
	play -n synth $SB pl E4 fade 0 0 gain 1 2> /dev/null
	play -n synth $SB pl B3 fade 0 0 gain 1 2> /dev/null
	play -n synth $SB pl G3 fade 0 0 gain 1 2> /dev/null
	play -n synth $SB pl D3 fade 0 0 gain 1 2> /dev/null
	play -n synth $SB pl A2 fade 0 0 gain 1 2> /dev/null
	play -n synth $SB pl E2 fade 0 0 gain 1 2> /dev/null
done
