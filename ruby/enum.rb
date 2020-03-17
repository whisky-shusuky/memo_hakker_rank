# nまでの整数それぞれの乗数に1を足してから、乗数の合計を出す。
def sum_terms(n)
  # your code here
    # これだと5*6 = 30, 30* 7= 210 ... 151200 となる
    # (1)はnの初期値 
    # (5..10).inject(1) {|product, n| product * n }
    # これでも同じ
    # (5..10).reduce(1, :*)   # :* is shorthand for multiplication
    #(1..n).map {|x| x**2+1 }.reduce(0,:+) if n >= 0
    (1..n).map {|x| x**2+1}.inject(0) {|product, n| product + n } if n >= 0
end

pp sum_terms(1)
pp sum_terms(2)
pp sum_terms(3)
pp sum_terms(4)
pp sum_terms(5)
