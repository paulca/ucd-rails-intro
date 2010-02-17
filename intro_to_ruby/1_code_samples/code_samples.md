!SLIDE center
    @@@ ruby
    puts 'hello world'
    => hello world

!SLIDE center
    @@@ ruby
    3.times { puts 'hello word' }
    hello word
    hello word
    hello word
    => 3

!SLIDE center
    @@@ ruby
    ['three', 'two', 'one'].reverse.join(',')
    => "one,two,three"
    
!SLIDE center
    @@@ ruby
    word = "this"
    parts = word.gsub('i','o').split
    parts.concat(['e']).join
    => "those"

!SLIDE center
    @@@ ruby
    if(5 + 3 == 7)
      'alternate universe'
    else
      'regular universe'
    end
    => "regular universe"

!SLIDE center
    @@@ ruby
    class Ruby
      def self.describe
        'awesome'
      end
    end
    Ruby.describe
    => "awesome"
    
!SLIDE center
    @@@ ruby
    class UCD
      def describe
        'a bit old and 70s style'
      end
    end
    university = UCD.new
    university.describe
    => "a bit old and 70s style"