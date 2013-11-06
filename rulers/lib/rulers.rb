# rulers/lib/rulers.rb

require "rulers/version"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"


module Rulers
	class Application
		def call(env)
			if env['PATH_INFO'] == '/favicon.ico'
				return [404, {'Content-Type' => 'text/html'}, []]
			end
			if env['PATH_INFO'] == '/'
				return [301, {'Content-Type' => 'text/html', 'Location' => '/quotes/a_quote'}, []]
			end
			begin
				klass, act = get_controller_and_action(env)
				controller = klass.new(env)

				text = controller.send(act)
				`echo debug > debug.txt`;
				[200, {'Content-Type' => 'text/html'}, [text]]
			rescue Exception
				[500, {'Content-Type' => 'text/html'}, ['Something went wrong. Sorry about that.']]
			end

		end
	end
end
