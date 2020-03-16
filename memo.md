- 配列操作
```ruby
def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index) # or
    # arr[index]
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos,length]
end
```

- 配列操作2
```ruby
def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    # Clue : arr[-index]
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    # arr.first
    arr.first
end

def last_element(arr)
    # return the last element of the array
    # arr.last
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end
```

- 配列操作3
```ruby
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.insert(0,element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index,element)    
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index,1,2)
end
```

配列4

```ruby
 arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3] 
Delete an element from the end of the array
 > arr.pop
 => 3
Delete an element from the beginning of the array
 > arr.shift
 => 5
Delete an element at a given position
 > arr.delete_at(2)
 => 4
Delete all occurrences of a given element
 > arr.delete(5)
 => 5
 > arr
 => [6, 3, 1, 2, 4, 3, 3]
```


配列5
```ruby
 > arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
 > arr.select {|a| a > 2}
 => [3, 4, 3, 4, 5, 6]
 > arr.reject {|a| a > 2}
 => [2, 1, 2]
 > arr
 => [3, 4, 2, 1, 2, 3, 4, 5, 6]
 > arr.drop_while {|a| a > 1} # removes elements till the block returns false for the first time
 => [1, 2, 3, 4, 5, 6]
 
 > arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]  
 > arr.delete_if {|a| a < 2}
  => [3, 4, 2, 2, 3, 4, 5, 6]  
 > arr.keep_if {|a| a < 4}  
 => [3, 2, 2, 3]

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select {|a| a % 2 == 1}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
  arr.reject {|a| a % 3 == 0}
end

def delete_arr(arr)
  # delete all negative elements
  arr.reject {|a| a < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  arr.keep_if {|a| a >= 0}
end

```

- ハッシュ1

```ruby
hackerrank = {"simmy" => 100, "vivmbbs" => 200}
user.each do |key, value|
    # some code on individual key, value
end

def iter_hash(hash)
    # your code here
    hash.each do |key, value|
      puts key
      puts value
    end
end

```

- ハッシュ2
```ruby
h.store(key, value)

> h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
 => {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
> h.keep_if {|key, value| key % 2 == 0} # or h.delete_if {|key, value| key % 2 != 0}
 => {2 => 4, 4 => 16}

# Enter your code here.
hackerrank.store(543121, 100)
hackerrank.keep_if {|key, value| key.is_a? Integer }
hackerrank.delete_if {|key, value| key % 2 == 0}

```
