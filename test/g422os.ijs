1:@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g422os.ijs'
NB. x{/:~y (order statistics) -------------------------------------------

(/:~y) -: (i.#y) ({/:~)"0 1 y=:       100 ?@$ 60
(/:~y) -: (i.#y) ({/:~)"0 1 y=: 0.1 * 100 ?@$ 60
(/:~y) -: (i.#y) ({/:~)"0 1 y=:       100 ?@$ 10000
(/:~y) -: (i.#y) ({/:~)"0 1 y=: 0.1 * 100 ?@$ 10000
(/:~y) -: (i.#y) ({/:~)"0 1 y=:       100   $ 10000
(/:~y) -: (i.#y) ({/:~)"0 1 y=:       100   $ 34.5

y=: 1000 ?@$ 600
x=: n -~ 20 ?@$ +:n=: #y
(x{/:~y) -: x ({/:~)"0 1 y
y=: 0.1 * y
(x{/:~y) -: x ({/:~)"0 1 y

'domain error' -: 'a' ({/:~) etx y

'index error'  -:  1e6 ({/:~) etx y
'index error'  -: _1e6 ({/:~) etx y


4!:55 ;:'n x y'

