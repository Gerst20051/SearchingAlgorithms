#!/usr/bin/env ruby

# [$]> ./script.rb
# [$]> ./binary_search/script.rb

require 'test/unit'

def binary_search(arr, key)
  low, high = 0, arr.length - 1
  while low <= high
    mid = (low + high) >> 1
    case key <=> arr[mid]
      when 1
        low = mid + 1
      when -1
        high = mid - 1
      else
        return mid
    end
  end
end

arr = [1, 3, 4, 12, 16, 21, 34, 45, 55, 76, 99, 101]

p binary_search(arr, 3) == 1
