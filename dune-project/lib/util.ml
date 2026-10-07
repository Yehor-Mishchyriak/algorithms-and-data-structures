type order =
  | Lt
  | Eq
  | Gt

let compare' (a : 'a) (b : 'b) : order =
    if a < b then Lt
    else if a = b then Eq
    else Gt

let rec insert (x' : 'a) (xs : 'a list) : 'a list = 
  match xs with
  | [] -> [x']
  | x::rest -> if x' <= x then x'::x::rest else x::(insert x' rest)

(* ------------------------------------------------------------------------ *)

module Float_utils = struct
  
  let halves (lower_bound : float) (upper_bound : float):
  (float * float) * (float * float) =
    let offset = (upper_bound -. lower_bound) /. 2.0 in
    let m1 = lower_bound +. offset in
    ((lower_bound, m1), (m1, upper_bound))

  let thirds (lower_bound : float) (upper_bound : float):
    (float * float) * (float * float) * (float * float) =
    let offset = (upper_bound -. lower_bound) /. 3.0 in
    let m1 = lower_bound +. offset in
    let m2 = m1 +. offset in
    ((lower_bound, m1), (m1, m2), (m2, upper_bound))

end

(* ------------------------------------------------------------------------ *)

module Int_utils = struct
  
  let halves (lower_bound : int) (upper_bound : int):
  (int * int) * (int * int) =
    let offset = (upper_bound - lower_bound) / 2 in
    let m1 = lower_bound + offset in
    ((lower_bound, m1), (m1, upper_bound))

  let thirds (lower_bound : int) (upper_bound : int):
    (int * int) * (int * int) * (int * int) =
    let offset = (upper_bound - lower_bound) / 3 in
    let m1 = lower_bound + offset in
    let m2 = m1 + offset in
    ((lower_bound, m1), (m1, m2), (m2, upper_bound))

end

(* ------------------------------------------------------------------------ *)

module DAC = struct

(* pre-condition:
    let xs = [x_0; ...; x_(n-1)];
    let ys = [y_0; ...; y_(m-1)];

    for all 0 <= i < j < n, x_i <= x_j
    for all 0 <= i < j < m, y_i <= y_j

   post-condition:
    let lst = merge xs ys;
    let lst = [l_0; ...; l_(m+n-1)];

    length lst = n + m
    lst contains exactly all elements of xs and ys, preserving multiplicities
    for all 0 <= i < j < m+n, l_i <= l_j *)
  let merge (lst1 : 'a list) (lst2 : 'a list) : 'a list = 
    
    let rec aux (xs : 'a list) (ys : 'a list) : 'a list = 
    
      match (xs, ys) with

      | (x'::xs', y'::ys') -> 
        if x' <= y'
          then x'::(aux xs' (y'::ys'))
        else   y'::(aux (x'::xs') ys')

      | (xs, []) -> xs

      | ([], ys) -> ys
    
    in aux lst1 lst2

  (* pre-condition: xs != [] *)
  let rec partition (p : 'a) (xs : 'a list) : ('a list * 'a list) = 
    match xs with
    | [] -> ([], [])
    | x'::xs' ->
      let (left, right) = partition p xs' in
        if x' <= p then ((x'::left), right) else ((left), x'::right)

end
