function DeletateCallbackClass(_callback, _arg = []) constructor{
	delegate_callback = _callback;
	delegate_callback_arg = _arg;
	delegate_callback_scope = method_get_self(_callback);
	delegate_callback_method = method(delegate_callback_scope, _callback);
	delegate_callback_method_index = method_get_index(delegate_callback_method);
	
	static set_callback = function(_callback){
		delegate_callback = _callback;
		delegate_callback_scope = method_get_self(_callback);
		delegate_callback_method = method(delegate_callback_scope, _callback);
		delegate_callback_method_index = method_get_index(delegate_callback_method);
	}
	
	static delegate_callback_invoke_args = function(){
		var _callback = delegate_callback_method_index, _args = delegate_callback_arg 
		with(delegate_callback_scope) script_execute_ext(_callback, _args);		
	}
	
	delegate_invoke = 
		array_length(_arg) == 0 ? 
		delegate_callback_method :
		delegate_callback_invoke_args;
}