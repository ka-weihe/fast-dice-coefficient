module.exports = 
  dice = (fst, snd) ->
    if fst.length < 2 || fst.length < 2 
      return 0

    map = new Map
    for i in [0 .. fst.length - 2]
      sub = fst.substr(i, 2)
      if map.has(sub)
        map.set(sub, map.get(sub) + 1)
      else
        map.set(sub, 1)

    match = 0
    for i in [0 .. snd.length - 2]
      sub = snd.substr(i, 2)
      if map.get(sub) > 0
        match++
        map.set(sub, map.get(sub) - 1)

    2.0 * match / (fst.length + snd.length - 2)
