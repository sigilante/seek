  ::  /sur/seek
::::
::
|%
+$  state-zero
  $:  %zero
  ==
::
+$  range       (pair pint tape)
+$  match       (map @u range)
+$  hits        (list match)
+$  line-hits   (map @ud hits)
::
+$  text
  $%  [%cord =cord]  :: @t
      [%tape =tape]  :: (list @tD)
      [%wain =wain]  :: (list cord)
      [%wall =wall]  :: (list tape)
  ==
::
+$  action
  $%  [%seek =cord =text]
  ==
--
