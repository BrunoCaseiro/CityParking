function[contains]= verify(bloom_filter,hashes_num,elem)
  m = length(bloom_filter);
  contains=1;
  
  for i=1:hashes_num
    
    elem=[elem num2string(i)]
    h   = rem(string2hasj(elem),m)
    
    if bloom_filter(h) == 0 %se o bloom filter não tiver a key h
        contains = 0;       %essse valor ainda não foi inserido
        
        break;
      end
    end
 end