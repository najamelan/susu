module Susu
module Refine
module Module

refine ::Module do

# Returns the last component of a Module name.
#
# @example Usage:
#
#   module X
#   class  Y
#
#      def initialize
#
#         p self.class.name      #=> X::Y
#         p self.class.lastname  #=> Y
#
#      end
#
#    end # class  Y
#    end # module X
#
def lastname

	name.split( '::' ).last

end



# Autoload equivalent of require_relative
#
def autoload_relative( name, path )

	autoload( name, File.expand_path( path, File.dirname( caller_locations.first.absolute_path ) ) )

end



def respond_to_susu? name, include_all = false

  respond_to_before_susu?( name, include_all ) and return true

  [

    :lastname          ,
    :autoload_relative

  ].include? name.to_sym

end

alias :respond_to_before_susu? :respond_to?
alias :respond_to?             :respond_to_susu?


end # refine Module

end # module Module
end # module Refine
end # module Susu
