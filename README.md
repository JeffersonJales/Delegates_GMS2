# Delegates_GMS2
Delegates for Game Maker Studio 2.3+

Maintained by [@jalesjefferson](https://twitter.com/JalesJefferson)

# [About Delegates](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/delegates/)

# Install 
- [Download the .yymps](https://github.com/JeffersonJales/Delegates_GMS2/releases/download/1.0.0/Delegates.yymps)
- Import the downloaded file to your project 

# Functions

### `myvar = new Delegate()`  
Instantiate a new Delegate struct to myvar

### `myvar.add(callback, args_array = [])` 
Add a new function to the Delegate. You can give an array with arguments to be parsed to this function when it is invoked 

### `myvar.invoke()` 
Execute all functions from the Delegate.

### `myvar.remove(callback)` 
Remove a previously added callback from the Delegate

### `myvar.clear()` 
Remove all previously added callbacks from the Delegate

# [Example](https://github.com/JeffersonJales/Delegates_GMS2/releases/download/1.0.0/delegates_example.yyz)

