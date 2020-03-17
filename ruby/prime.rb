def prime?(number)
  return false if [0,1].include?(number)
  # 2 以上 number 未満(..だと以下)
  (2...number).none? { |n| number % n == 0 }
end

pp prime?(4)
pp prime?(5)
