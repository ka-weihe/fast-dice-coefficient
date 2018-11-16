# fast-dice-coefficient
Fastest implementation of [Sørensen–Dice coefficient][wiki]. This implementation has linear time complexity (O(n)), as opposed to [string-similarity](https://www.npmjs.com/package/string-similarity), [dice-coefficient](https://www.npmjs.com/package/dice-coefficient), etc., that runs in cubic time (O(n)^2).

This algorithm can be used to compute the similarity between strings. It return a fraction between 0 and 1, where 0 indicates no match and 1 indicates that the strings are indentical.

## Install

```
$ npm i fast-dice-coefficient --save
```

### Usage
``` javascript
dice = require('fast-dice-coefficient');

dice('javascript', 'coffeescript');
//=> 0.5
```

### Benchmark

200 samples on i7-3667u and 8GB RAM.

| Package                 | ops/sec |
|-------------------------|---------|
| stringSimilarity        | 7,590   |
| natural.DiceCoefficient | 11,117  |
| dice-coefficient        | 14,732  |
| fast-dice-coefficient   | 44,067  |
| fast-levenshtein        | 4,495   |
