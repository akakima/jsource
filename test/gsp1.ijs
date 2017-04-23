1:@:(9!:19)2^_44[(echo^:ECHOFILENAME) './gsp1.ijs'
NB. -. ------------------------------------------------------------------

(scheck -. $.x), (-. -: -.&.$.) x=:     _10+?    405$2
(scheck -. $.x), (-. -: -.&.$.) x=:     _10+?  3 4 5$21
(scheck -. $.x), (-. -: -.&.$.) x=:   o._10+?  3 4 5$21
(scheck -. $.x), (-. -: -.&.$.) x=:j./o._10+?2 3 4 5$21

(scheck -. $.x), (-. -: -.&.$.) x=: (_10+?60$21),<.-_1+2^31

1 -: 3 $. -. $. 0 1 0
1 -: 3 $. -. $. 2 3 4
1 -: 3 $. -. $. 2 3.4
1 -: 3 $. -. $. 2 3j4

s=: $. d=: ?2 3 4$2
(-.d) -: x=: -. s
scheck x
1024 -: type x


NB. %. ------------------------------------------------------------------

ti=: }. @ }: @ (,/) @ (,."_1 +/&_1 0 1) @ i.  NB. indices for tridiagonal system

g=: 3 : '(_500+?(_2+3*y)$1000) (<"1 ti y)} $. 1$.2$y'
h=: 3 : '_500+?y$1000'

1e_13 >. >./ | (y=: h  8) (%. -: (%.$.)) x=: g  8
1e_13 >. >./ | (y=: h  9) (%. -: (%.$.)) x=: g  9
1e_13 >. >./ | (y=: h 10) (%. -: (%.$.)) x=: g 10
1e_13 >. >./ | (y=: h 11) (%. -: (%.$.)) x=: g 11
   
1e_13 >. >./ | (y=: h  8) (%. -: (%.$.)) x=: 0.01*g  8
1e_13 >. >./ | (y=: h  9) (%. -: (%.$.)) x=: 0.01*g  9
1e_13 >. >./ | (y=: h 10) (%. -: (%.$.)) x=: 0.01*g 10
1e_13 >. >./ | (y=: h 11) (%. -: (%.$.)) x=: 0.01*g 11

1e_13 >. >./ | (y=: h  8) (%. -: (%.$.)) x=: (g  8) j. g  8
1e_13 >. >./ | (y=: h  9) (%. -: (%.$.)) x=: (g  9) j. g  9
1e_13 >. >./ | (y=: h 10) (%. -: (%.$.)) x=: (g 10) j. g 10
1e_13 >. >./ | (y=: h 11) (%. -: (%.$.)) x=: (g 11) j. g 11

'nonce error' -: %. etx $.   ?7 7$2
'nonce error' -: %. etx $.   ?7 7$20
'nonce error' -: %. etx $. o.?7 7$20
'nonce error' -: %. etx $. j.?7 7$20

'length error' -: (?10$100) %. etx g 9


NB. %: ------------------------------------------------------------------

(scheck %: $.x), (%: -: %:&.$.) x=:     _10+?    405$2
(scheck %: $.x), (%: -: %:&.$.) x=:     _10+?  3 4 5$21
(scheck %: $.x), (%: -: %:&.$.) x=:   o._10+?  3 4 5$21
(scheck %: $.x), (%: -: %:&.$.) x=:j./o._10+?2 3 4 5$21

(scheck %: $.x), (%: -: %:&.$.) x=:  ?  3 4 5$21
(scheck %: $.x), (%: -: %:&.$.) x=:o.?  3 4 5$21

0 -: 3 $. %: $. 1 1 1
0 -: 3 $. %: $. 2 3 4
0 -: 3 $. %: $. 2 3.4
0 -: 3 $. %: $. 2 3j4

f=: 4 : '(p%q) -: ((2;x)$.p) % (2;y)$.q'

p=: ?4 5 3$2
q=: ?4 5 3$2
c=: ; (i.1+r) <"1@comb&.>r=:#$p
f&>/~c

p=: ?4 5 3$4
q=: ?4 5 3$1000
c=: ; (i.1+r) <"1@comb&.>r=:#$p
f&>/~c

p=:   ?4 5 3$4
q=: o.?4 5 3$1000
c=: ; (i.1+r) <"1@comb&.>r=:#$p
f&>/~c

p=:    ?  4 5 3$4
q=: j./?2 4 5 3$1000
c=: ; (i.1+r) <"1@comb&.>r=:#$p
f&>/~c


4!:55 ;:'a c d f g h p q r s t ti x y'


