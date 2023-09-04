/// @description EXAMPLE
print = function(txt){
	show_debug_message(txt);	
}

_del = delegate();

test_1 = function(){
	print("test_1");
	print("HELLO WORLD =)");
}

test_2 = function(text){
	print("test_2");
	print(text);
}

test_3 = function(text1, text2){
	print("test_3");
	print(text1);
	print(text2);
	print("END")
	print("")
}

test_4 = function(){
	_del.remove(test_1).remove(test_2).remove(test_4);
}

_del
.add(test_1)
.add(test_2, ["Hello World!"])
.add(test_3, ["Hello!", "I'm the world"])
.add(test_4)
