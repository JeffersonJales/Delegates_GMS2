function DelegateClass(_scope) constructor{
	
	scope = _scope;
	methods = [];
	
	static add = function(_callback, _arg = undefined){
		if(!is_method(_callback)) return self;
		
		array_push(methods, new DeletateCallbackClass(scope, _callback, _arg));
		return self;
	}

	static invoke = function(_args = undefined){
		for(var i = 0; i < array_length(methods); i++){
			methods[i].delegate_invoke(_args);	
		}
		
		return self;
	}
	
	static clear = function(){
		methods = [];
		return self;
	}
	
	static remove = function(_callback){
		if(!is_method(_callback)) return self;
		
		for(var i = 0; i < array_length(methods); i++){
			if(methods[i].delegate_callback == _callback){
				array_delete(methods, i, 1);
				break;
			}
		}
		
		return self;
	}
}