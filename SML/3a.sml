fun zip a [] = []
  | zip [] b = []
  | zip (a::resta) (b::restb) = (a,b)::zip resta restb;

