# Part 1

# arr에 있는 모든 요소를 더하세요.
def sum arr
    arr.inject(0){|sum,x| sum + x}
  # YOUR CODE HERE
end

# arr에 있는 최대값 2개를 더하세요.
def max_2_sum arr
    
    arr.empty?? 0: arr.max(2).reduce(:+)#짜부
    
#     case arr.count
#     when 0
#         0
#     when 1
#         arr[0]
#     when 2
#         arr[0]+arr[1]
#     else
#   #1. 한개씩 제일 큰 값을 뽑아서 더하는거
#   max=arr.max
#   arr.delete_at(arr.index(max))
#   max += arr.max
#   #2. 배열을 정렬해서 두 개 값을 그냥 뽑아 더하는거
  # YOUR CODE HERE
 end

# n번째 값까지 더하세요.
def sum_to_n? arr, n
  arr.combination(2).any? {| a, b| a + b == n}
  # YOUR CODE HERE
end

# Part 2

# "hello 이름"을 출력하는 코드를 쓰세요.
def hello(name)
    # "Hello, " + name
    "hello #{name}"
  # YOUR CODE HERE
end

# 자음으로 시작하는지 판별하는 코드를 쓰세요.
def starts_with_consonant? s
   %w(a e i o u).includes? s.downcase[0] unless s.empty? or /^\/\.watch(s)
   
  # YOUR CODE HERE
end
