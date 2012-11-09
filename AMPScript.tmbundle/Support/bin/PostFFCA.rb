require "uri"
require "net/http"

etCA = ARGV[0]
etUser = ARGV[1] 
etPass = ARGV[2]

htmlDoc = STDIN.read
params = {
	'name' => etCA,
	'user' => etUser,
	'pass' => etPass,
	'amp' => htmlDoc
}

response = Net::HTTP.post_form(URI.parse('http://www.solconlabs.com/textmate/API/ContentAreaFreeForm.php'), params)
puts response.body