require 'net/http'
require 'uri'

uri = URI 'https://index.affectiva.com/'

Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
  request = Net::HTTP::Get.new uri
  request.basic_auth 'username', 'password'
  request['Accept'] = 'application/json'
  response = http.request request

  puts response.body
end
