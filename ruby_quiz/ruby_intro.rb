# Part 1

# arr에 있는 모든 요소를 더하세요.
def sum arr
  (!arr.nil? and arr.any?) ? arr.inject(0, :+) : 0 
  # YOUR CODE HERE
end

# arr에 있는 최대값 2개를 더하세요.
def max_2_sum arr
    if arr.nil? or arr.empty?
        0
        elsif arr.length == 1
             arr.first
         else
            max = arr.sort[-2..-1]
            max.first + max.last
    end
  # YOUR CODE HERE
 end

# n번째 값까지 더하세요.
def sum_to_n? arr, n
     return false if arr.nil? or arr.empty? or arr.length == 1
  arr.each do |first|
    arr.each do |second|
      return true if (first + second == n) and first != second
    end
  end
  false
  # YOUR CODE HERE
end

# Part 2

# "hello 이름"을 출력하는 코드를 쓰세요.
def hello(name)
     "Hello, " + name
  # YOUR CODE HERE
end

# 자음으로 시작하는지 판별하는 코드를 쓰세요.
def starts_with_consonant? s
    !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
  # YOUR CODE HERE
end
