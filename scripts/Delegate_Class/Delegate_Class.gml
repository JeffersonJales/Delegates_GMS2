/// LIMITATIONS -> Delegates don`t work with Build in functions, so you will have to wrap up the build-in
/// function with another function

function Delegate () constructor {
	
	delegates = [];				// Array with __DelegateCallback's
	delegates_length = 0;	// Array length
	
	/// @descrition With this function you call all functions from this delegate
	static invoke = function(){
		var i = 0, delegate; 
		repeat(delegates_length){
			delegate = delegates[i++]
			delegate.invoke();
		}
	}
	
	/// @description With this function you cam remove a callback from the delegate
	/// @param {Function} callback A function index to add to the delegate
	/// @param {Array} array_args An array with the functions arguments
	static add = function(callback, array_args = []){
		array_push( delegates, new __DelegateCallback(other, callback, array_args ) );
		delegates_length++;
		return self;
	}
	
	/// @description With this function you cam remove a callback from the delegate
	/// @param {Function} callback A previous added callback 
	static remove = function(callback){
		var i = 0; repeat(delegates_length){
			if(delegates[i].__callback == callback){
				array_delete(delegates, i, 1); 
				delegates_length--;
				return self;
			}
			
			i++
		}
		
		return self;
	}
	
	/// Remove all callbacks from the delegate
	static clear = function(){
		delegates = [];
		delegates_length = 0;
	}
	
}

/// Dont look here
function __DelegateCallback (target, callback, args_arr = []) constructor {
	__callback = callback;
	__callback_method = method(target, callback);
	__callback_method_index = method_get_index(__callback_method);
	__callback_args = args_arr;
	
	invoke =	array_length(args_arr) > 0 ?
						function(){ script_execute_ext( __callback_method_index, __callback_args ) } :
						__callback_method;
}
