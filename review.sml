(* Exam 1 Studying
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
*)

(* Exam 2 Studying *)
type tuple = int * real;
fun tupleTest (a:tuple) = true;

datatype intlist = EMPTY | data of int * intlist;
fun intlistTest (a:intlist) = true;

type intTo = int -> bool;

datatype coin = Dime | Nickel | Quarter | Penny;

datatype I = int;
datatype R = real;
datatype IR = I | R;
fun irTest (a:IR) = true;

fun double (L:int list) = map (fn x => x*2) L;

fun sum (L:int list) = foldr (fn (i,c) => i+c) 0 L;

fun filter f L = foldr (fn (i,c) => if f(i)=true then i::c else c) [] L;

datatype 'a option = None
		| Some of 'a;
fun length([]) = 0 
|	length(x::xs) =
		1+length(xs);

(* fun dotproduct ([], []) = None
|	dotproduct ([], y::ys) = None
|	dotproduct (x::xs, []) = None
|	dotproduct (x::xs, y::ys) = 
		if not ((length(x::xs)) = (length(y::ys))) then
			None
		else
			Some((x*y)+(dotproduct(xs,ys))); *)
