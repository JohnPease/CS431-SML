(* John Pease, CS431, Homework 3 *)

(* Problem 1: Insert int into sorted list *)
fun insert (a,[]) = [a]
|	insert (a, b::bs) = 
	if a < b then a::b::bs
	else b::(insert(a,bs))

(* Problem 2: Insertion Sort *)
fun sort ([]) = []
|	sort (b::bs) =
	insert (b, sort bs)

(* Problem 3: Returns the sum of all squares from a -> 0 *)
fun sqsum (a:int) =
	if a = 0 then 0
	else a*a + sqsum(a-1)

(* Problem 4: Return the portion of the list that is lower than the value of e*) 
fun less (e, L) = 
	List.filter (fn a => a < e) L
