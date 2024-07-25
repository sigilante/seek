  ::  /lib/seek
::::
::
/-  ss=seek
/+  re
|%
::  Disambiguate searching.
::
++  seek
  |=  [nedl=cord hstk=text:ss]
  ^-  ?(hits:ss line-hits:ss)
  ?-  -.hstk
    %cord  (seek-cord nedl +.hstk)
    %tape  (seek-tape (trip nedl) +.hstk)
    %wain  (seek-wain nedl +.hstk)
    %wall  (seek-wall (trip nedl) +.hstk)
  ==
::  Seek all cord matches in a cord.
::
++  seek-cord
  |=  [nedl=cord hstk=cord]
  ^-  hits:ss
  =/  tedl  (trip nedl)
  =/  tstk  (trip hstk)
  (all:re tedl tstk)
::  Seek all tape matches in a tape.
::
++  seek-tape
  |=  [nedl=tape hstk=tape]
  ^-  hits:ss
  (all:re nedl hstk)
::  Seek all cord matches in a list of cords.
::
++  seek-wain
  |=  [nedl=cord hstk=wain]
  ^-  line-hits:ss
  %-  malt
  ^-  (list (pair @ud hits:ss))
  =|  lines=(list (pair @ud hits:ss))
  =|  idx=@
  |-
  ?~  hstk  lines
  =/  tstk  (trip i.hstk)
  =/  res   (all:re (trip nedl) tstk)
  %=  $
    idx    +(idx)
    lines  ?~(res lines [[idx res] lines])
    hstk   t.hstk
  ==
::  Seek all tape matches in a list of tapes.
::
++  seek-wall
  |=  [nedl=tape hstk=wall]
  ^-  line-hits:ss
  %-  malt
  ^-  (list (pair @ud hits:ss))
  =|  lines=(list (pair @ud hits:ss))
  =|  idx=@
  |-
  ?~  hstk  lines
  =/  res   (all:re nedl i.hstk)
  %=  $
    idx    +(idx)
    lines  ?~(res lines [[idx res] lines])
    hstk   t.hstk
  ==
--
