# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
 freq = Hash.new    #hash to count integers in using key as integer and value as count
 answer = Array.new   #array to store the answer to be returned in

 
  arr.each {|a|     #loop through every element in array    
    if freq[a] != nil     #check to see if hash value exists
        freq[a] = freq[a] + 1  #add 1 to the hash value
    else 
        freq[a] = 1   #create the hash value
    end
  }


  freq.each {|key, value|   #loop through all key and value combinations in hash
     if value == 1          #If the value is 1 it is unique so add it to the answer array to be returned
         answer << key
     end
  }      
  return answer

end 
