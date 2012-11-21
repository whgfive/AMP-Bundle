require "uri"
require "net/http"

etCA = ARGV[0]
etUser = ARGV[1] 
etPass = ARGV[2]
etEnv = ARGV[3]

htmlDoc = STDIN.read
params = {
	'name' => etCA,
	'user' => etUser,
	'pass' => etPass,
	'env' => etEnv,
	'amp' => htmlDoc
}

response = Net::HTTP.post_form(URI.parse('http://www.imhlabs.com/AMPscript-bundle/API/ContentAreaFreeForm.php'), params)
puts response.body