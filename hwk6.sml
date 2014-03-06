(* John Pease, CS431, Homework 6 *)

(* Problem 1 *)
(* Problem 1.1: Define a ML data type grade for representing the letter grades A, B, C, D, F *)

(* Problem 1.2: Define a function percent2grade: real -> grade that converts percentages grades x to letter grades (on a 10 point scale) *)

(* Problem 1.3: Define a function grade2point: grade -> real that converts letter grades to grade points on 4-point scale *)

(* Problem 1.4: Define a function gpa: grade list -> real that takes a list of letter grades and returns the grade point average of the grades *)

(* Problem 1.5: Define a function gpaFromPercent: real list -> real that takes a list of percentage grades and returns the grade point average *)


(* Problem 2 *)
datatype 'data tree =
	Empty |
	Node of 'data tree * 'data * 'data tree;

(* Problem 2.1: Define a function isComplete: 'a tree -> bool which tests whether a tree is complete or not (makes sure every Node has either 2 Empty children or two Node children ) *)

(* Problem 2.2: Define a function makeBST: 'a list -> ('a * 'a -> bool) -> 'a tree which organizes the items in a list into a binary search tree (not necessarily balanced and all items are unique) *)

(* Problem 2.3: Define a function searchBST: ''a tree -> (''a * ''a -> bool) -> ''a -> bool that searches a binary search tree for a given data element and returns true if it is found and false otherwise *)
