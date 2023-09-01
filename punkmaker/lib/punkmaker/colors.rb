
class ColorBundle

def self.read( *paths )
    recs = []
    paths.each do |path|
        recs += read_csv( path )
    end
    new( recs )
end    

def self.normalize_key( str )
    ## remove all non-alphanum chars (a-z,0-9)
    str.downcase.gsub(/[^a-z0-9]/, '').strip
end
def normalize_key( str )  self.class.normalize_key( str ); end
 

def initialize( recs )
    @recs = recs
    @colors_by_key = _build_colors_by_key( @recs )
end

def records() @recs; end

def find_by( name: )
   key = normalize_key( name )  ## normalize q(uery) string/symbol
   @colors_by_key[ key ]
end

def _find( name )  find_by( name: name ); end
alias_method :[], :_find


######
##  helpers
def _build_colors_by_key( recs )
   h = {}
   recs.each_with_index do |rec|

     color = Color.from_hex( rec['color'] )
     names = (rec['names'] || '').split( '|' )
     
     names.each do |name|
       key = normalize_key( name )

       if h[ key ]
         puts "!!! ERROR - color name is not unique:"
         pp rec
         puts "duplicate:"
         pp h[key]
         exit 1
       end
       h[ key ] = color
     end
  end
   h
end

end  # class ColorBundle