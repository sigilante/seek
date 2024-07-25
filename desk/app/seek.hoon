  ::  /app/seek
::::  Version ~2024.7.25 by ~lagrev-nocfep
::    Demo app for /lib/seek.
/-  ss=seek
/+  default-agent,
    dbug,
    seek,
    verb
|%
+$  versioned-state
  $%  state-zero:ss
  ==
+$  card  card:agent:gall
--
=|  state-zero:ss
=*  state  -
%-  agent:dbug
%+  verb  |
^-  agent:gall
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  `this(state !<(state-zero:ss old))
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ?+    mark  (on-poke:default mark vase)
      %seek-action
    =+  !<(act=action:ss vase)
    ^-  [(list card) _this]
    ?+    `@tas`-.act  (on-poke:default mark vase)
        %seek
      =/  res  (seek:seek cord.act text.act)
      ~&  >  res
      [~ this]
    ==
  ==
++  on-peek   on-peek:default
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--

