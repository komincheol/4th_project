require 'httpparty'
require 'nokogiri'

url="http://finance.naver.com/sise"
response=HTTParty.get(url)#HTTParty를 통해 url에 저장한다.

text=Nokogiri::HTML(response.body)#Nokogiri를 통해 검색을 용이한문서를 만든다.
#Nokogiri::XML=>xml parsing할때 쓴다.
kospi =text.css('#KOSPI_now')#.css를 통해 셀렉터

puts kospi.text #.text를 쓰는 이유는 tag 안에 있는 