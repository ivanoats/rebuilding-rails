# rulers/test/test_helper.rb 
require "rack/test"
require "test/unit"

# always use local Rulers first
this_dir = File.join(File.dirname(__FILE__), "..")
$LOAD_PATH.unshift File.expand_path(this_dir)

require "rulers"
