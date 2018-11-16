Benchmark = require('benchmark')
suite = new (Benchmark.Suite)
Benchmark.options.minSamples = 100

dice = require './dice'
diceCoefficient = require 'dice-coefficient'
stringSimilarity = require 'string-similarity'
natural = require 'natural'
levenshtein = require 'fast-levenshtein'

str1 = 'kvhjzsb iasbgszpopcvsk fbsdkuzbjfszkbdkuv bsdguajwrsdbsigubsvja bubnncepqei wpqweqotpwq brnwnerwervw'
str2 = 'sdyusu webhfwew wenjwejnkwejn ewrnjkwrnjkwern kqnewnrener bertbertbqhqwbeghewrrpe owieoweowerbevevwq'

suite.add('fast-levenshtein', ->
  levenshtein.get str1, str2

).add('stringSimilarity', ->
  stringSimilarity.compareTwoStrings str1, str2

).add('natural.DiceCoefficient', ->
  natural.DiceCoefficient str1, str2

).add('dice-coefficient', ->
  diceCoefficient str1, str2

).add('fast-dice-coefficient', ->
  dice str1, str2

).on('cycle', (event) ->
  console.log String(event.target)
  return

).on('complete', ->
  console.log 'Fastest is ' + @filter('fastest').map('name')
  return

).run 'async': true
