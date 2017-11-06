# 주소는 건들지마세요.
# 요청 건수 제한이 있으니 조심히 ㅜ^ㅜ
require 'httparty'
url = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName=%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC&dataTerm=MONTH&numOfRows=100&ServiceKey=sfE57qPQ5x1eAXU41ftcyXYJZK5eKEONTGzz%2FdCe069VtqGX4UwcpLZbJhXSayA%2FtauuMhXPXttKeoxuafYWPQ%3D%3D'
response = HTTParty.get(url)
dust = response.first[1]["body"]["items"]["item"][1]["pm10Value"]
puts ("미세먼지 농도는 "+dust)
#조건문
dust = dust.to_i
if (dust>150)
  puts "매우나쁩니다."
elsif dust>80
  puts "나쁩니다."
elsif dust>30
  puts "보통입니다."
else
  puts "좋습니다."
end