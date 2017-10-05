import cookieStorage  from './cookie-storage'
import localStorage   from './local-storage'
import pretendStorage from './pretend-storage'

supported = (storage) ->
  try
    testStr = '__akasha__test__'
    storage.set testStr, testStr
    ok = (storage.get testStr) == testStr
    storage.remove testStr
    ok
  catch err
    false

export default do ->
  if supported localStorage
    localStorage
  else if supported cookieStorage
    cookieStorage
  else
    pretendStorage
