function DeletateCallbackClass(_scope, _callback, _arg = undefined) constructor{
	delegate_callback = _callback;
	delegate_callback_arg = _arg;
	delegate_callback_method = method(_scope, _callback);
	delegate_callback_method_index = method_get_index(delegate_callback_method);
	
	static delegate_invoke = function(_arg){
		delegate_callback_method(_arg, delegate_callback_arg);
	}
}