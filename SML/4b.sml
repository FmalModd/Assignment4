fun insert ((n:real), []) = [n]
  | insert ((n:real), (a::rest)) = if n < a then (n::a::rest)
                                else (a::(insert(n, rest)));

fun insertsort [] = []
  | insertsort (a::[]) = [a]
  | insertsort (a::rest) = let
                                val x = insertsort(rest)
                            in
                                insert(a, x)
                            end;
