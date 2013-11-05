# rulers/test/test_application.rb 
require_relative "test_helper"

class TestApp < Rulers::Application
end

class RulersAppTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		TestApp.new
	end

	def test_request
		get "/"

		assert last_response.ok?
		body = last_response.body
		assert body["Hello"]
	end

	def test_request_full
		get "/"
		body = last_response.body
		assert body["Hello from Ruby on Rulers!"]
	end

end
