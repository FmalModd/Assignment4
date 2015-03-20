fun greaterThan [] k = []
  | greaterThan (a::resta) k = if a > k then a::greaterThan resta k
                               else greaterThan resta k;
