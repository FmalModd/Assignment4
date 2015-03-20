fun mymap f = let
                    fun function [] = []
                    |   function (a::rest) = (f(a)::(function rest))
              in
                    function
              end;
