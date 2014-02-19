(* Problem 1: return the number of digits in passed number *)
fun num_digits n = 
	if n > 10 then
		1 + num_digits(n div 10)
	else
		1;

(* Problem 2: return the maximum number of digits in a passed list *)
