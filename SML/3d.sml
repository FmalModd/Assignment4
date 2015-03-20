fun partition f [] = ([], [])
  | partition f (a::rest) = let
                                val (Y,Z) = partition f rest
                            in
                                if f(a) then ((a::Y), Z)
                                else  (Y, (a::Z))
                            end;
