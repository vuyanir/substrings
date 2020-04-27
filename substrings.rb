#!/usr/bin/ruby

#UNDERSTANDING
# Method that will take words/sentence and array as args. 
# The array will hold words to search for in the word/sentence args. 
# The method will return a dict of the words searched and counts.

#PLANNING
# Create method substrings(word, arr)
# loop through arr
  # check if item in arr exist in word
  # record counts > 1 in new dict
#return new dict

def substrings(word, arr)
    dict = Hash.new

    word.split.each { |w|
        arr.each { |i|

            if w.downcase.include?(i)
                if dict.include?(i)
                    dict[i] += 1
                else
                    dict[i] = 1
                end
            end
        }
    }

    puts dict.sort.to_h
end

arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", arr)
