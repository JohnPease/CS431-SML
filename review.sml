(* Exam Studying *)
fun f ([]) = "empty"
|	f ([a, _]) = "exactly two"
|	f (c::d::_) = "two or more";

fun length([]) = 0
|	length(x::xs) =
		1 + length(xs);

fun sort2(a:int, b:int) =
	if a < b then
		a::b::[]
	else
		b::a::[];

fun sort3(a:int, b:int, c:int) = "no"

fun cycle1(x::xs) =
	xs@(x::[]);

fun cycle(L, x) =
	if x = 0 then
		L
	else
		cycle(cycle1(L),x-1);

fun filter (a, x::xs) =
	let fun helper(a, x::xs, l) =
		if a(x) = true then
			helper(a, xs, x::l)
		else
			helper(a, xs, l)
	in helper(a, x::xs, [])
	end;
	
