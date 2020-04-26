def merge_sort(array)
=begin
  if n > 1
    copy A[1..n/2] into B[1..n/2]
    copy A[n/2..n]  into c[1..n/2]
    mergeSort(B[1..n/2])
    mergeSort(c[1..n/2])
    merge B,C into A   
=end
  return array if array.length <= 1 

  mid = (array.length/2).floor
  merge(left,right)
  right = merge_sort(array[0..mid-1])
  left = merge_sort(array[mid..array.length])
end

def merge(left,right)
  if left.empty?
    right
   elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length],right)
  else
    [right.first] + merge(left,right[1..left.length])
  end
end

puts merge_sort([4, 8, 6, 2, 1, 5, 3, 7]).join(',')