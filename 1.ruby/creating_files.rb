#1.특정 폴더로 들어간다.
#2 파일을 생성한다.
#3 내용을 작성한다.

 Dir.chdir("src")
# puts Dir.pwd



# #30개의 파일을 만든다.
# #1.txt~30.txt
# 1.txt=>"1번재 내용",2.txt=>"2번째 내용"
30.times do |i|
    i +=1
    i=i.to_s
    File.open(i+".txt","w")do |file|
        file.write(i+"번째 내용")
    end
end

#while문 적용
# i=0
# while(i<=30)
# j=i.to_s
# out_file=File.new(j+".txt",'w')
# out_file.puts(j+"번째내용")
# out_file.close

# i += 1
# end