require          'thor'
require          'pry'
require          'awesome_print'

require_relative '../tidbits'
require_relative 'test/run'


AwesomePrint.defaults = {
# 	indent:          3,      # Indent using 4 spaces.
 	raw:             true,   # Do not recursively format object instance variables.
# 	sort_keys:       true,  # Do not sort hash keys.
# 	new_hash_syntax: false,  # Use the JSON like syntax { foo: 'bar' }, when the key is a symbol
# 	limit:           false,  # Limit large output for arrays and hashes. Set to a boolean or integer.
}

class Fs < Thor


desc 'test', 'Run the unit tests for the Fs library'
def test

	TidBits::Fs::TestSuite.run

end


end # class Fs
