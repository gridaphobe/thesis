let rec sumList xs = match xs with
  | []    -> []
  | y::ys -> y + sumList ys
