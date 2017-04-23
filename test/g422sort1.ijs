1:@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g422sort1.ijs'
NB. y/:y and y\:y -------------------------------------------------------
NB. 65536<#elements 

randuni''

test=: 3 : 0
 t=. (/:y){y
 assert. t -: y/:y
 assert. t -: /:~ y
 if. (1=#$y)*.0=1{.0$y do. assert. (}.t)>:}:t end. 
 t=. (\:y){y
 assert. t -: y\:y
 assert. t -: \:~ y
 if. (1=#$y)*.0=1{.0$y do. assert. (}.t)<:}:t end. 
 1
)

test1=: 3 : 0
 t=. (/:"1 y){"1 y
 assert. t -: y/:"1 y
 assert. t -: /:~"1 y
 assert. t -: /:"1~ y
 t=. (\:"1 y){"1 y
 assert. t -: y\:"1 y
 assert. t -: \:~"1 y
 assert. t -: \:"1~ y
 1
)

*./ b=: test @:(]   ?@$ 2:)"0 ] 500+i.(IFRASPI+.UNAME-:'Android'){10000 2000
*./ b=: test1@:(3&, ?@$ 2:)"0 ] 500+i.(IFRASPI+.UNAME-:'Android'){10000 2000

test   a.{~ 100000 ?@$ #a.
test   a.{~ 100000 2 ?@$ #a.

test     u: 100000 ?@$ 65536
test     u: 100000 2 ?@$ 65536

test     adot1{~  ?100000 $# adot1
test     adot1{~  ?100000 2 $# adot1

test  10&u: RAND32 100000 ?@$ C4MAX
test  10&u: RAND32 100000  2 ?@$ C4MAX

test     adot2{~  ?100000 $# adot2
test     adot2{~  ?100000 2 $# adot2

test     sdot0{~  ?100000 $# sdot0
test     sdot0{~  ?100000 2$ # sdot0

test        100000 ?@$ 1e4
test    -1+ 100000 ?@$ 1e4
test  _5e3+ 100000 ?@$ 1e4

test        100000 ?@$ 1e9

test        100000 ?@$ IF64{1e9 1e18

test  - 1 + 100000 ?@$ IF64{1e9 1e18

test(--:n)+ 100000 ?@$ n=: IF64{1e9 1e18

test  0.01*     100000 ?@$ IF64{1e9 1e18

test  0.01*  -1+100000 ?@$ IF64{1e9 1e18

test  0.01*(--:n)+ 100000 ?@$ n=: IF64{1e9 1e18


test1  a.{~ 3 100000 ?@$ #a.

test1  a.{~ 3 100000 2 ?@$ #a.

test1    u: 3 100000 ?@$ 65536

test1 10&u: RAND32 3 100000 ?@$ C4MAX

test1       3 100000 ?@$ 1e4

test1   -1+ 3 100000 ?@$ 1e4

test1 _5e4+ 3 100000 ?@$ 1e4

test1       3 100000 ?@$ 1e9

test1       3 100000 ?@$ IF64{1e9 1e18

test1   -1+ 3 100000 ?@$ 1e9

test1   -1+ 3 100000 ?@$ IF64{1e9 1e18

test1 _5e8+ 3 100000 ?@$ 1e9

test1 (IF64{_5e8 _5e17)+ 3 100000 ?@$ IF64{1e9 1e18

test1 (--:n) + 3 100000 ?@$ n=: IF64{1e9 1e18

test1 0.01* 3 100000 ?@$ IF64{1e9 1e18

test1 0.01*  -1+ 3 100000 ?@$ IF64{1e9 1e18

test1 0.01*(--:n) + 3 100000 ?@$ n=: IF64{1e9 1e18

NB. Test smallrange and radix sort, <65K values and >

(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  ?~ 40000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  ?~ 40000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  1000 * ?~ 40000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  1000 * ?~ 40000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  ?~ 80000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  ?~ 80000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  1000 * ?~ 80000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  1000 * ?~ 80000

NB. Include negative numbers

(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  _20000 + ?~ 40000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  _20000 + ?~ 40000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  _20000 + 1000 * ?~ 40000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  _20000 + 1000 * ?~ 40000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  _20000 + ?~ 80000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  _20000 + ?~ 80000
(((*./@:(2 <:/\ ])) *. *./@:~:@])   /:~)  _20000 + 1000 * ?~ 80000
(((*./@:(2 >:/\ ])) *. *./@:~:@])   \:~)  _20000 + 1000 * ?~ 80000

4!:55 ;:'adot1 adot2 sdot0 b n test test1'


