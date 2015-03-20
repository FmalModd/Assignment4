fun reduction f (a::[]) = a
  | reduction f (a::b::rest) = reduction f (f(a,b)::rest);
