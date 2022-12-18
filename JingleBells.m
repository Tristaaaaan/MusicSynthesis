#MARK TRISTAN R. FABELLAR
#CPE 4 - 2
#Jingle Bells, Music Synthesis
#2022-12-18

clc;
clear;
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
B4Q=sin(2*pi*494*te);
A4Q=sin(2*pi*440*te);
G4Q=sin(2*pi*392*te);
E4Q=sin(2*pi*330*te);

#Half Notes
D4H=sin(2*pi*294*th);
E4H=sin(2*pi*330*th);
F4H=sin(2*pi*349*th);
B4H=sin(2*pi*494*th);

#5th Octave
#Quarter Notes
C5Q=sin(2*pi*524*te);
D5Q=sin(2*pi*587*te);




#Scores
scoreA=[D4Q,B4Q,A4Q,G4Q,D4H];
scoreB=[D4Q,B4Q,A4Q,G4Q,E4H];
scoreC=[E4Q,C5Q,B4Q,A4Q,F4H];
scoreD=[D5Q,D5Q,C5Q,A4Q,B4H];

#Full Song
chorus=[scoreA,scoreB,scoreC,scoreD];
soundsc(chorus,fs);

