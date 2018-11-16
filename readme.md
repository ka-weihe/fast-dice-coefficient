# fast-dice-coefficient
Fastest implementation of [Sørensen–Dice coefficient](https://en.wikipedia.org/wiki/S%C3%B8rensen%E2%80%93Dice_coefficient). This implementation has linear time complexity O(n), as opposed to other solutions: [string-similarity](https://www.npmjs.com/package/string-similarity), [dice-coefficient](https://www.npmjs.com/package/dice-coefficient), etc., running in cubic time O(n<sup>2</sup>).

This algorithm can be used to compute the similarity between strings. It return a fraction between 0 and 1, where 0 indicates no match and 1 indicates full match.

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

Using two test-strings with 100 characters each.

| Package                 | ops/sec |
|-------------------------|---------|
| stringSimilarity        | 7,590   |
| natural.DiceCoefficient | 11,117  |
| dice-coefficient        | 14,732  |
| fast-dice-coefficient   | 44,067  |
| fast-levenshtein        | 4,495   |
