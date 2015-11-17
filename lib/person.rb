# class Person
# 	attr_accessor :name, :age
# $age = 35
# 	def initialize
# 	   @name = name 
# 	   @age = age
#      end

# 	def myname
# 	  @name = "kaky"
# 	  @age != 55
# 	    puts "My name is #{@name}" 
# 	end

# 	def y
# 		y != 35
# 	end

# end

# p = Person.new
# p.myname



def test
	lang = %w(pyhton, perl, ruby, people)
	lang.grep(/^p/) { |x| x.capitalize  }
   lang.empty?
end
 p test