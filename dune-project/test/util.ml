let test_equals (test_name : string) (x : 'a) (y : 'a) : unit = 
  if x = y then Printf.printf "%s : SUCCESS\n" test_name
  else Printf.printf "%s : FAIL\n" test_name
