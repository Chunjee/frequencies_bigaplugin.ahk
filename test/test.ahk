#Include %A_ScriptDir%\..\node_modules
#Include unit-testing.ahk\export.ahk
#Include biga.ahk\export.ahk
#Include %A_ScriptDir%\..\export.ahk
#NoTrayIcon
#SingleInstance, force
SetBatchLines, -1

A := new biga()
assert := new unittesting()

assert.group(".frequencies")
assert.label("default tests")
assert.test(A.frequencies([1, 1, 3, 3, 4, 4, 5, 5, 8, 8]), {1: 2, 3: 2, 4: 2, 5: 2, 8: 2})
assert.test(A.frequencies([1, 1, 1, 1, 1, 1, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 7, 7, 8, 10]), {1: 6, 3: 3, 4: 3, 5: 3, 6: 4, 7: 2, 8: 1, 10: 1})

assert.test(A.frequencies(["hello", "world", "Hello", "World"]), {"hello": 2, "world": 2})

assert.fullReport()
assert.writeResultsToFile()
