<Cabbage>
form caption("What Does Morocco Sound Like?") size(600,300)

rslider bounds(20,20,100,100) channel("wind") range(0,1,0.5)
rslider bounds(140,20,100,100) channel("drone") range(0,1,0.5)
rslider bounds(260,20,100,100) channel("bells") range(0,1,0.4)
rslider bounds(380,20,100,100) channel("master") range(0,1,0.5)

</Cabbage>

<CsoundSynthesizer>

<CsOptions>
-d -odac
</CsOptions>

<CsInstruments>

sr=48000
ksmps=64
nchnls=2
0dbfs=1

gaRevL init 0
gaRevR init 0

;---------------------------
; Wind
;---------------------------

instr 1

kWind chnget "wind"

aNoise pinkish kWind*0.03

kFilt rspline 300,1500,0.05,0.15

aWind butlp aNoise,kFilt

gaRevL+=aWind
gaRevR+=aWind

endin

;---------------------------
; Gombri Drone
;---------------------------

instr 2

kDrone chnget "drone"

kFreq rspline 70,90,0.02,0.08

a1 poscil 0.05*kDrone,kFreq
a2 poscil 0.015*kDrone,kFreq*2
a3 poscil 0.008*kDrone,kFreq*3

aSig=a1+a2+a3

aSig moogladder aSig,800,0.2

gaRevL+=aSig
gaRevR+=aSig

outs aSig*0.5,aSig*0.5

endin

;---------------------------
; Metal Bells
;---------------------------

instr 3

kBell chnget "bells"

kMetro metro 0.12

if kMetro==1 then

event "i",4,0,6

endif

endin

instr 4

iFreq random 600,2500

aEnv expseg 1,0.1,0.3,p3-0.1,0.001

a1 poscil 0.02,iFreq
a2 poscil 0.01,iFreq*1.41
a3 poscil 0.008,iFreq*2.13

aSig=(a1+a2+a3)*aEnv

gaRevL+=aSig
gaRevR+=aSig

endin

;---------------------------
; Reverb
;---------------------------

instr 99

kMaster chnget "master"

aL,aR reverbsc gaRevL,gaRevR,0.9,12000

aL=tanh(aL)
aR=tanh(aR)

outs aL*kMaster,aR*kMaster

gaRevL=0
gaRevR=0

endin

</CsInstruments>

<CsScore>

i1 0 z
i2 0 z
i3 0 z
i99 0 z

</CsScore>

</CsoundSynthesizer>