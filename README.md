# Delegates
Delegates for GameMaker

Maintained by [@jalesjefferson](https://twitter.com/JalesJefferson)

# [About Delegates](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/delegates/)

# Install 
- [Download the .yymps](https://github.com/JeffersonJales/Delegates_GMS2/releases/download/1.0.0/Delegates.yymps)
- Import the downloaded file to your project 

# Function index
- delegate - Returns a DelegateClass struct

## DelegateClass Function index

`add(_callback, _args = [])` - Add a new callback to the Delegate. 
The _args will parsed to the _callback, when it's called by invoke().

`invoke()` - Execute all functions from the Delegate

`remove(_callback)` - Remove a previously added callback from the Delegate

`clear()` - Remove all previously added callbacks from the Delegate

`change_callback(_callback, _new_callback)` - Change the given callback to another given callback on delegate

`change_callback_args(_callback, _new_args)` - Change the given callback delegate arguments for the new given arguments

`get_amount()` - return the amount of delagates
