a = [1, 4, 22, 388]
def ascending? arr
    arr.each_cons(2).all?{|left, right| left <= right}
end