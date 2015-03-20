(* 3. a) *)
fun zip a [] = []
  | zip [] b = []
  | zip (a::resta) (b::restb) = (a,b)::zip resta restb;
(* 3. b) *)
fun greaterThan [] k = []
  | greaterThan (a::resta) k = if a > k then a::greaterThan resta k
                               else greaterThan resta k;
(* 3. c) *)
fun reduction f (a::[]) = a
  | reduction f (a::b::rest) = reduction f (f(a,b)::rest);
(* 3. d) *)
fun partition f [] = ([], [])
  | partition f (a::rest) = let
                                val (Y,Z) = partition f rest
                            in
                                if f(a) then ((a::Y), Z)
                                else  (Y, (a::Z))
                            end;
(* 4. a) *)
fun insert ((n:real), []) = [n]
  | insert ((n:real), (a::rest)) = if n < a then (n::a::rest)
                                   else (a::(insert(n, rest)));
(* 4. b) *)
fun insertsort [] = []
  | insertsort (a::[]) = [a]
  | insertsort (a::rest) = let
                                val x = insertsort(rest)
                            in
                                insert(a, x)
                            end;
(* 4. c) *)
fun concat([],R) = R
  | concat(n::L,R) = n::concat(L,R);
fun rev([]) = []
  | rev(n::L) = concat(rev(L), n::[]);
fun middle(a::[]) = a
  | middle(a::rest) = middle(rev(rest));
(* 4. d) *)
fun help e [] = []
  | help e (a::rest) = ((e, a)::(help e rest));
fun cartesian [] (b::restb) = []
  | cartesian (a::resta) (b::restb) = (help a (b::restb)) @ (cartesian resta (b::restb));
(* 4. e) *)
fun mymap f = let
                    fun function [] = []
                    |   function (a::rest) = (f(a)::(function rest))
              in
                    function
              end;
(* Test cases: *)
(* 3. a) *)
zip [1,2,3] ["a","b","c"];
zip [1,2] ["a"];
(* 3. b) *)
greaterThan [1,5,3,2,4] 3;
(* 3. c) *)
reduction op+ [1,3,5,7,9];
reduction op* [1,3,5,7,9];
(* 3. d) *)
partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];
(* 4. a) *)
insert (3.3, [1.1, 2.2, 4.4, 5.5]);
(* 4. b) *)
insertsort [2.2, 4.4, 5.5, 3.3, 1.1];
(* 4. c) *)
middle [1,2,3,4,5];
middle [true, false];
(* 4. d) *)
cartesian ["a","b","c"] [1,2];
(* 4. e) *)
(mymap (fn x => x*x)) [1,2,3,4];
