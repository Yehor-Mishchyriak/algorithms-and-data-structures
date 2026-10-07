let rec ternary_search_int
    (f : int -> int)
    (lower_bound : int)
    (upper_bound : int) : int =

  if upper_bound - lower_bound <= 2 then
    let rec best i best_i =
      if i > upper_bound then best_i
      else
        best (i + 1) (if f i > f best_i then i else best_i)
    in
    best (lower_bound + 1) lower_bound

  else
    let ((a, _), (m1, m2), (_, b)) =
      Util.Int_utils.thirds lower_bound upper_bound
    in
    match Util.compare' (f m1) (f m2) with
    | Util.Lt -> ternary_search_int f m1 b
    | Util.Eq -> ternary_search_int f m1 m2
    | Util.Gt -> ternary_search_int f a m2