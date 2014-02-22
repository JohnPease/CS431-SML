(* John Pease, CS431 Homework 4 *)

(* Problem 1: return the number of digits in passed number *)
fun num_digits n = 
	if n > 10 then
		1 + num_digits(n div 10)
	else
		1;

(* Problem 2: return the maximum number of digits in a passed list *)
fun max_digits nil = 0
|	max_digits (x::xs) =
		if num_digits(x) > max_digits(xs) then
			num_digits(x)
		else
			max_digits(xs);

(* Problem 3: return the nth digit of the integer x *)
fun nth_digit(x, n) =
	if n = 1 then
		x - (x div 10 * 10)
	else
		nth_digit(x div 10, n - 1);

(* Problem 4: return a sublist of integers of a list L so that each returned integer's nth digit is d *)
(* examples:
bucket(3, 1, [723, 234, 345, 235]) = [723]
bucket(3, 2, [723, 234, 345, 235]) = [234, 235]
bucket(3, 3, [723, 234, 345, 234]) = [345]
*)
fun bucket(d, n, L) =
	List.filter (fn a => nth_digit(a, n) = d) L

(* Problem 5: sorts the integer list L based on the nth digit of each integer *)
(* examples:
sort_nth_digit(1, [723, 234, 345, 235]) = [723, 234, 345, 235]
sort_nth_digit(2, [723, 234, 345, 235]) = [723, 234, 235, 345]
sort_nth_digit(3, [723, 234, 345, 235]) = [234, 235, 345, 723]
*)
fun sort_nth_digit(n, L) =
	let fun caller (x, n, m, l) =
			if x = 10 then
				l
			else
				caller(x+1, n, m, l@bucket(x, n, m))
	in caller(~1, n, L, []) 
	end;

(* Problem 6: sort the integer list L based based on radix sort algorithm where m is the maximum number of digits of the integers in L *)
(* examples:
radix_sort_max(3, [170, 45, 75, 90, 802, 2, 24, 66]) = [2, 24, 45, 66, 75, 90, 170, 802]
*)
(* not sure what the syntax is for passing the return value of a function into another function call...
fun radix_sort_max(m, L) = 0
	let fun helper(x, n, a) =
		if x = n then (
			a
		) else (
			helper(x+1, n, sort_nth_digit(x, a))
		)
	in helper(~1, m, L)
	end; *)
