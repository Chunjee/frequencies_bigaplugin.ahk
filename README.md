# .frequencies
adds the method `frequencies` to biga.ahk


## Installation
In a terminal or command line navigated to your project folder:

```bash
npm install frequencies_bigaplugin.ahk
```

In your code export.ahk needs to be included after biga.ahk:

```autohotkey
#Include %A_ScriptDir%\node_modules
#Include biga.ahk\export.ahk
#Include frequencies_bigaplugin.ahk\export.ahk

A := new biga()
A.frequencies([1, 1, 3, 3, 4, 4, 5, 5, 8, 8])
; => {1: 2, 3: 2, 4: 2, 5: 2, 8: 2}
```

# Plugin Methods

## .frequencies
takes an array and returns a mapping object whose keys are the values of the array’s elements and values are counts of that key appeared in that array.


## Arguments
array (Array): The given array from which mapping is to be created.


## Returns
(Object): This method returns a created mapping object.


## Example
```autohotkey
A.frequencies(["Fred", "Barney, "Fred", "Pepples", "Barney"])
; => {"Barney": 2, "Fred": 2, "Pepples": 1}
```
