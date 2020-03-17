# index 以降の配列を取る
def take(array, index) 
    array.shift(index)
    return array
end

pp take([1,2,3,4], 2)
pp take([1,2,3,4], 3)