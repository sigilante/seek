/+  just,
    shoe,
    sole,
    *test
|%
::
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %just (en-beam [~zod %just [%ud run]] /)]
    [~ ~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %just ud+run]]
  ==
::
++  run-pair
  |=  pair=^
  ^-  (unit tang)
  :-  ~
  %+  expect-eq
    !>  -.pair
  !>  +.pair
::
++  run-fail
  |=  =(trap)
  ^-  (unit tang)
  :-  ~
  (expect-fail trap)
::
++  cases-render-wain
  :~  :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~]]]]
          (render-wain:~(. just (bowl 1)) ~)
      :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~[[[[~ %br] [~ [~ [0xff 0xff 0xff]]]] ~['a']] [[[~ %br]]]]]]]]
          (render-wain:~(. just (bowl 2)) ~['a'])
      :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~[[[[~ %br] [~ [~ [0xff 0xff 0xff]]]] ~['a']] [[[~ %br] [~ [~ [0xff 0xff 0xff]]]] ~['b']] [[[~ %br] [~ [~ [0xff 0xff 0xff]]]] ~['c']]]]]]]
          (render-wain:~(. just (bowl 3)) ~['a' 'b' 'c'])
  ==
::
++  cases-one
  :~  :-  0     (sub 1 1)
      :-  1     (sub 2 1)
      :-  19    (sub 20 1)
  ==
::
++  fails-one
  :~  |.((sub 1 2))
      |.((sub 19 20))
  ==
::
++  test-zero
  ;;  tang
  %-  zing
  ;:  weld
    (murn cases-render-wain run-pair)
  ==
--
