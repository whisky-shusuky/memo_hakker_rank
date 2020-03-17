# 引数の数を自由に取って連結する
def full_name(first, *rest)
  rest.reduce(first) {|x,y| x + " " + y}
end

pp full_name("aaa","bbb","cccc","ddd")