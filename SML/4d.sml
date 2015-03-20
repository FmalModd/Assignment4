fun help e [] = []
  | help e (a::rest) = ((e, a)::(help e rest));

fun cartesian [] (b::restb) = []
  | cartesian (a::resta) (b::restb) = (help a (b::restb)) @ (cartesian resta (b::restb));
