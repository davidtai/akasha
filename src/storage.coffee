export default (backend) ->
  root  = if typeof window == 'undefined' then global else window
  try
    store = root[backend+'Storage']
  catch err
    return {
      get: ->
        undefined
      set: ->
        undefined
      remove: ->
        undefined
      clear: ->
        undefined
    }

  get: (k) ->
    try
      JSON.parse store.getItem k
    catch err
      console.error 'Unable to parse', k
      undefined

  set: (k, v, opts) ->
    store.setItem k, JSON.stringify v

  remove: (k) ->
    store.removeItem k

  clear: ->
    store.clear()
