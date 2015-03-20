fun concat([],R) = R
  | concat(n::L,R) = n::concat(L,R);

fun rev([]) = []
  | rev(n::L) = concat(rev(L), n::[]);

fun middle(a::[]) = a
  | middle(a::rest) = middle(rev(rest));
