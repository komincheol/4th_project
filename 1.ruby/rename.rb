##파일명바꾸기

#1. 폴더 안으로 들어간다.
Dir.chdir("src")
#2. 폴더 안을 돌면서 파일들의 이름을 가져온다.
files= Dir.entries(Dir.pwd).reject{|name| name[0]=='.'}
puts files
#3.files 배열 안에 바꾸고자 하는 폴더를 넣는다.
files.each do |f|
    File.rename(f, "samsung"+f)
end
# Dir.foreach(Dir.pwd) do |name|
#     file.rename("원래이름","새파일이름")
# end

#3. 각각의 이름을 "1.txt"=>"samsung1.txt"