let rec insertion_sort (xs : 'a list) : 'a list = 
  match xs with
  | [] -> []
  | x'::xs' -> Util.insert x' (insertion_sort xs')

let rec quick_sort (xs : 'a list) : 'a list = 
  match xs with
  | [] -> []
  | x::xs ->
    let (left, right) = Util.DAC.partition x xs in 
      (quick_sort left) @ [x] @ (quick_sort right)
