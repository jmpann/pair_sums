def pair_sums(arr,k)
  array = arr.sort
  len = array.length
  left_position = 0
  right_position = len - 1
  output = []
  while left_position < right_position
    current_sum = array[left_position] + array[right_position]
    if( current_sum == k)
      output << [array[left_position], array[right_position]]
      left_position += 1
    elsif (current_sum < k)
      left_position += 1
    elsif (current_sum > k)
      right_position -=1
    end
  end
  puts output.uniq.inspect
end


pair_sums([1,2,1,3,6,9,4,5,7],10)
