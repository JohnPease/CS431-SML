(* John Pease, CS431, Homework 6 *)

(* Problem 1 *)
(* Problem 1.1: Define a ML data type grade for representing the letter grades A, B, C, D, F *)
datatype grade = A | B | C | D | F;

(* Problem 1.2: Define a function percent2grade: real -> grade that converts percentages grades x to letter grades (on a 10 point scale) *)
fun percent2grade x =
	if x >= 90.0 then
		A
	else if x >= 80.0 then
		B
	else if x >= 70.0 then
		C
	else if x >= 60.0 then
		D
	else
		F;

(* Problem 1.3: Define a function grade2point: grade -> real that converts letter grades to grade points on 4-point scale *)
fun grade2point A = 4.0
|	grade2point B = 3.0
|	grade2point C = 2.0
|	grade2point D = 1.0
|	grade2point F = 0.0;

(* Problem 1.4: Define a function gpa: grade list -> real that takes a list of letter grades and returns the grade point average of the grades *)
fun gpa [] = 0.0
|	gpa(x::xs) =
		let fun 
				helper (a, b, []) = 0.0
			|	helper(i, l, x::xs) =
					if xs = nil then
						(i+(grade2point x)) / l
					else
						helper(i+(grade2point x), l+1.0, xs);
		in helper(0.0, 1.0, x::xs)
		end;

(* Problem 1.5: Define a function gpaFromPercent: real list -> real that takes a list of percentage grades and returns the grade point average *)
fun gpaFromPercent L = gpa (map percent2grade L);

(* Problem 2 *)
datatype 'data tree =
	Empty |
	Node of 'data tree * 'data * 'data tree;

(* Problem 2.1: Define a function isComplete: 'a tree -> bool which tests whether a tree is complete or not (makes sure every Node has either 2 Empty children or two Node children ) *)
fun isComplete x = true

(* Problem 2.2: Define a function makeBST: 'a list -> ('a * 'a -> bool) -> 'a tree which organizes the items in a list into a binary search tree (not necessarily balanced and all items are unique) *)

(* Problem 2.3: Define a function searchBST: ''a tree -> (''a * ''a -> bool) -> ''a -> bool that searches a binary search tree for a given data element and returns true if it is found and false otherwise *)
