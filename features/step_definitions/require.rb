require "httparty"
response = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
puts " response code: #{response.code}"
puts "response message: #{response.message}"
puts "response hearders: #{response.headers} "
puts "response bory: #{response.bory}"

# logo no incio tentei realizar o get por esta codigo, porém, não consegui.