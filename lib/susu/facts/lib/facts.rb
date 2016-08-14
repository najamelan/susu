require 'logger'
require 'awesome_print'
require 'set'

AwesomePrint.defaults = {
# 	indent:          3,      # Indent using 4 spaces.
 	raw:             true,   # Do not recursively format object instance variables.
# 	sort_keys:       true,  # Do not sort hash keys.
# 	new_hash_syntax: false,  # Use the JSON like syntax { foo: 'bar' }, when the key is a symbol
# 	limit:           false,  # Limit large output for arrays and hashes. Set to a boolean or integer.
}


'facts'.relpath.glob( '**/*.rb' ) { |source| require_relative source.to_path }


require_relative 'facts/config'
Susu::Facts::Config.new
