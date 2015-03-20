fun insert ((n:real), []) = [n]
  | insert ((n:real), (a::rest)) = if n < a then (n::a::rest)
                                else (a::(insert(n, rest)));
