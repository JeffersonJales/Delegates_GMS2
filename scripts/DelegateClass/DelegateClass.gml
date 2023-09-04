function DelegateClass() constructor{
	
	methods = [];
	
	static add = function(_callback, _args = []){
		if(!is_method(_callback)) return self;
		
		array_push(methods, new DeletateCallbackClass(_callback, _args));
		return self;
	}

	static invoke = function(){
		for(var i = 0; i < array_length(methods); i++){
			methods[i].delegate_invoke();	
		}
		
		return self;
	}
	
	static clear = function(){
		methods = [];
		return self;
	}
	
	static remove = function(_callback){
		if(is_method(_new_callback)){
			for(var i = 0; i < array_length(methods); i++){
				if(methods[i].delegate_callback == _callback){
					array_delete(methods, i, 1);
					return self;
				}
			}
		}
		
		return self;
	}

	static change_callback = function(_callback, _new_callback){
		if(is_method(_new_callback)){
			for(var i = 0; i < array_length(methods); i++){
				if(methods[i].delegate_callback == _callback){
					methods[i].set_callback(_new_callback);
					return self;
				}
			}
		}
		
		return self;
	}
	
	static change_callback_args = function(_callback, _new_args = []){
		if(is_method(_callback)){
			for(var i = 0; i < array_length(methods); i++){
				if(methods[i].delegate_callback == _callback){
					methods[i].delegate_callback_arg = _new_args
					return self;
				}
			}
		}
	}

	static get_amount = function(){
		return array_length(methods);
	}
}