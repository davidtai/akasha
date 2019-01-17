import cookies from 'es-cookies'
import md5     from 'es-md5'

export default do ->
  pretendStorage = {}

  key = (k) -> "#{k}"

  get: (k) ->
    pretendStorage[key(k)]

  set: (k, v, opts) ->
    pretendStorage[key(k)] = v

  remove: (k) ->
    delete pretendStorage[key(k)]

  clear: ->
    for key of pretendStorage
      delete pretendStorage[key(k)]
