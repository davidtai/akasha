import cookies from 'es-cookies'
import md5     from 'es-md5'

export default do ->
  key = (k) -> "#{k}"

  get: (k) ->
    cookies.getJSON key k

  set: (k, v, opts) ->
    ks = (cookies.getJSON key '_keys') ? []
    ks.push k
    cookies.set (key '_keys'), ks
    cookies.set (key k, opts), v

  remove: (k) ->
    cookies.remove key k

  clear: ->
    ks = (cookies.getJSON key '_keys') ? []
    for k in ks
      cookies.remove k
    cookies.remove key '_keys'
