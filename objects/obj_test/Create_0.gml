/// @description EXAMPLE
delegate = new Delegate();

test = function(){
	show_debug_message("HELLO WORLD CARALHO");
}

teste = function(text){
	show_debug_message(text);
}

teste2 = function(text1, text2){
	show_debug_message(text1);
	show_debug_message(text2);
}

test3 = function(){
	show_debug_message("Jump");
	show_debug_message("");
}

delegate
.add(test)
.add(teste, ["Hello World!"])
.add(teste2, ["Hello!", "I'm the world"])
.add(test3);

delegate.invoke();

delegate
.remove(teste2)
.remove(teste);

delegate.invoke();
delegate.clear();

delegate.invoke();


game_end();