#!/usr/bin/env ruby

# [$]> ./script.rb
# [$]> ./linear_search/script.rb

require 'test/unit'

def linear_search(arr, key)
  i = 0
  while i < arr.length
    return i if arr[i] == key
    i += 1
  end
  -1
end

arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]

p linear_search(arr, 3) == 6
