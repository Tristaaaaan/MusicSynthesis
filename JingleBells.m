#MARK TRISTAN R. FABELLAR
#CPE 4 - 2
#Jingle Bells, Music Synthesis
#2022-12-18

clc;
clf;
clear all;
close all;

fs = 44100;

# Time Stamp
te=0:(1/fs):0.25;
tq=0:(1/fs):0.5;
ttq=0:(1/fs):0.75;
th=0:(1/fs):1.0;
tth=0:(1/fs):1.5;
tw=0:(1/fs):2.0;

# Note | Octave | Note

#4th Octave

#Quarter Notes
D4Q=sin(2*pi*294*te);
B4Q=sin(2*pi*494*te); #0.25
A4Q=sin(2*pi*440*te);
G4Q=sin(2*pi*392*te);
E4Q=sin(2*pi*330*te);
G4Q2=sin(2*pi*392*tq)
B4Q2=sin(2*pi*494*tq); #0.50
A4Q2=sin(2*pi*440*tq);

#Half Notes
D4H=sin(2*pi*294*th);
E4H=sin(2*pi*330*th);
F4H=sin(2*pi*349*th);
B4H=sin(2*pi*494*th);
G4H=sin(2*pi*392*th);

#5th Octave

#Quarter Notes
C5Q=sin(2*pi*524*te);
D5Q=sin(2*pi*587*te);
E5Q=sin(2*pi*659*te);
D5Q2=sin(2*pi*587*tq);

#Scores
scoreA=[D4Q,B4Q,A4Q,G4Q,D4H];
scoreB=[D4Q,B4Q,A4Q,G4Q,E4H];
scoreC=[E4Q,C5Q,B4Q,A4Q,F4H];
scoreD=[D5Q,D5Q,C5Q,A4Q,B4H];
scoreE=[E4Q,C5Q,B4Q,A4Q,D5Q,D5Q,D5Q,D5Q];
scoreF=[E5Q,D5Q,C5Q,A4Q,G4Q2,D5Q2];
scoreG=[B4Q,B4Q,B4Q2,B4Q,B4Q,B4Q2];
scoreH=[B4Q,D5Q,G4Q,A4Q,B4H];
scoreI=[C5Q,C5Q,C5Q,C5Q,C5Q,B4Q,B4Q,B4Q];
scoreJ=[B4Q,A4Q,A4Q,B4Q,A4Q2,D5Q2];
scoreK=[D5Q,D5Q,C5Q,A4Q,G4H];

#Lines
lineA=[scoreA,scoreB,scoreC,scoreD,scoreA,scoreB,scoreE,scoreF];
lineB=[scoreG,scoreH,scoreI,scoreJ,scoreG,scoreH,scoreI,scoreK];
lineC=[scoreG,scoreH,scoreI,scoreJ,scoreG,scoreH,scoreI,scoreK,scoreI,scoreK];

#Full Song
fullsong=[lineA,lineB,lineA,lineC];

#Run
soundsc(fullsong,fs);

