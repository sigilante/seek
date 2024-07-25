#   `%seek`: Full-Text Search for Urbit

**Status:  `/lib/seek` is a complete convenience wrapper for `++all:re` regex's functionality..**

![](https://biblioctopus.cdn.bibliopolis.com/pictures/276.jpg?auto=webp&v=1511324321)

`%seek` searches a body of text and returns all hits.  While the meat of the project
is in `/lib/seek`, an example application is included as well in `/app/seek`.

The value returned from a search depends on the input:

```hoon
+$  text
  $%  [%cord =cord]  :: @t
      [%tape =tape]  :: (list @tD)
      [%wain =wain]  :: (list cord)
      [%wall =wall]  :: (list tape)
  ==
::
+$  hits        (list match)    :: cord/tape result
+$  line-hits   (map @ud hits)  :: wain/wall result
```

Prior art in [`/lib/regex`](https://github.com/lynko/re.hoon) by ~macrep-racdec.

```
dojo> :seek &seek-action [%seek 'hello' [%cord 'hello world']]
>   ~[[n=[p=0 q=[p=[p=[p=1 q=1] q=[p=1 q=6]] q="hello"]] l=~ r=~]]

dojo> =odyssey .^(wain %cx /=seek=/dat/odyssey/txt)

dojo> :seek|seek 'Polyphemus' odyssey
>   [   n
  [ p=4.168
    q=~[[n=[p=0 q=[p=[p=[p=1 q=56] q=[p=1 q=66]] q="Polyphemus"]] l=~ r=~]]
  ]
    l
  [   n
    [ p=424
        q
      ~[
        [n=[p=0 q=[p=[p=[p=1 q=19] q=[p=1 q=29]] q="Polyphemus"]] l=~ r=~]
        [n=[p=0 q=[p=[p=[p=1 q=52] q=[p=1 q=62]] q="Polyphemus"]] l=~ r=~]
      ]
    ]
      l
    { [ p=4.129
        q=~[[n=[p=0 q=[p=[p=[p=1 q=22] q=[p=1 q=32]] q="Polyphemus"]] l=~ r=~]]
      ]
    }
    r={}
  ]
    r
  [   n
    [ p=4.446
      q=~[[n=[p=0 q=[p=[p=[p=1 q=1] q=[p=1 q=11]] q="Polyphemus"]] l=~ r=~]]
    ]
    l={}
      r
    { [ p=11.305
        q=~[[n=[p=0 q=[p=[p=[p=1 q=45] q=[p=1 q=55]] q="Polyphemus"]] l=~ r=~]]
      ]
      [ p=11.173
        q=~[[n=[p=0 q=[p=[p=[p=1 q=8] q=[p=1 q=18]] q="Polyphemus"]] l=~ r=~]]
      ]
      [ p=4.134
        q=~[[n=[p=0 q=[p=[p=[p=1 q=8] q=[p=1 q=18]] q="Polyphemus"]] l=~ r=~]]
      ]
    }
  ]
]
```
