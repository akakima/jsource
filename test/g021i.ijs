1:@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g021i.ijs'
NB. >./ B ---------------------------------------------------------------

0 1 1 1 -: >./ 0 0 1 1 ,: 0 1 0 1

max=: 4 : 'x>.y'

(>./"1 -: max/"1) x=:?3 5 17$2
(>./"2 -: max/"2) x
(>./"3 -: max/"3) x

(>./"1 -: max/"1) x=:?3 5 32$2
(>./"2 -: max/"2) x
(>./"3 -: max/"3) x

(>./"1 -: max/"1) x=:?3 8 32$2
(>./"2 -: max/"2) x
(>./"3 -: max/"3) x

f=: 3 : '(>./ -: max/) y ?@$ 2'
,f"1 x=:7 8 9,."0 1 [ _1 0 1+  255
,f"1 |."1 x
,f"1 x=:7 8 9,."0 1 [ _1 0 1+4*255
,f"1 |."1 x


NB. >./ I ----------------------------------------------------------------

max=: 4 : 'x>.y'

(>./ -: max/) x=:1 2 3 1e9 2e9
(>./ -: max/) |.x

(>./   -: max/  ) x=:_1e4+?    23$2e4
(>./   -: max/  ) x=:_1e4+?4   23$2e4
(>./"1 -: max/"1) x
(>./   -: max/  ) x=:_1e4+?7 5 23$2e4
(>./"1 -: max/"1) x
(>./"2 -: max/"2) x

(>./   -: max/  ) x=:_1e9+?    23$2e9
(>./   -: max/  ) x=:_1e9+?4   23$2e9
(>./"1 -: max/"1) x
(>./   -: max/  ) x=:_1e9+?7 5 23$2e9
(>./"1 -: max/"1) x
(>./"2 -: max/"2) x


NB. >./ D ----------------------------------------------------------------

max=: 4 : 'x>.y'

(>./   -: max/  ) x=:0.01*_1e4+?    23$2e4
(>./   -: max/  ) x=:0.01*_1e4+?4   23$2e4
(>./"1 -: max/"1) x
(>./   -: max/  ) x=:0.01*_1e4+?7 5 23$2e4
(>./"1 -: max/"1) x
(>./"2 -: max/"2) x


NB. >./ Z ----------------------------------------------------------------

max=: 4 : 'x>.y'

(>./   -: max/  ) x=:(0j1-0j1)+0.1*_1e2+?    23$2e2
(>./   -: max/  ) x=:(0j1-0j1)+0.1*_1e2+?4   23$2e2
(>./"1 -: max/"1) x
(>./   -: max/  ) x=:(0j1-0j1)+0.1*_1e2+?7 5 23$2e2
(>./"1 -: max/"1) x
(>./"2 -: max/"2) x

4!:55 ;:'f max x'


