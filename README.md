#   `%seek`: Full-Text Search for Urbit

**WIP ~2024.7.25.**

![](https://biblioctopus.cdn.bibliopolis.com/pictures/276.jpg?auto=webp&v=1511324321)

`%seek` searches a body of text and returns all hits.  While the meat of the project
is in `/lib/seek`, an example application is included as well in `/app/seek`.

Prior art in [`/lib/regex`](https://github.com/lynko/re.hoon) by ~macrep-racdec.

```
dojo> =odyssey .^(wain %cx /=seek=/dat/odyssey/txt)

dojo> :seek|seek 'Odysseus' odyssey
```
