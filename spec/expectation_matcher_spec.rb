describe 'Expectation Matcher' do 
	# The equivalence matcher

   context 'Equivalence' do
		it "return the equivalence of an object" do 
			x = 1
			expect(x).to eq(1)
		end 

		it "return the value of non equivalence of an object" do
			x = 3
			y = 4
			expect(x).to_not eq(y)
		end
    end
    # The truthiness matcher

   context 'Truthiness' do
		it "return the truthiness of an object" do 
			a = 24 > 3
			expect(a).to be(true)
			expect(a).to be_truthy
		end

		it "return the falsiness of an object" do
	         z = 35 < 3
	         y = nil
			expect(z).to be(false)
			expect(y).to be_falsey
		end

        it "return the nil object" do
        	y = nil
		    expect(y).to be(nil)
	    end

	  it "return the non truth of an object" do
	  	   q = 3 - 0
	  	   expect(q).not_to be_nil
	    end
	end

	# The collection matcher
	context 'Collection' do
		# Arrays
		it "return array of an object using include matcher" do
			a = [1,3,45]
			expect(a).to include(1,3,45)
			expect(a).not_to include(5,2)
		end
		it "return array of an object using the matcher_array" do
			a = [23,5,66,55]
			b = ["kaky" , "habib"]
			expect(a).to match_array([23,5,66,55]) 
			expect(a).not_to match_array(b)
			expect(a).to start_with(23)
			expect(a).to end_with(55)
	   end
	   it "return array of an object using the contain matcher" do 
	   	    a = [23,5,66,55]
			b = ["kaky" , "habib"]
			expect(a).to contain_exactly(23,5,66,55)
			expect(a).not_to contain_exactly(b)
	   end
           #Hashs
        it "return hash of an object" do
        	h = {:name => 'kaky', :age => 25}
        	z = {:place => 'NYC', :country => 'United States'}
        	expect(h).to include(:name)
        	expect(h).to include(:name, :age)
        	expect(h).to include(:name => 'kaky')
        	expect(h).to include(:name => 'kaky', :age => 25)
        	expect(h).not_to include(z)
        end
        #String
        it "return string of an object" do
        	s = 'Mohemed'
        	expect(s).to include('o')
        	expect(s).to include('o', 'M')
        	expect(s).to start_with('M')
        	expect(s).to end_with('d')
        	expect(s).not_to include("G")
        end
	end

	context 'Numerical Matcher' do
		it "return conparaison of number" do
			b = 3
			 d = 2
			   f = 5
			expect(b).to eq(3)
			expect(b).to be < f
			expect(b).to be <= f
			expect(f).to be > d
			expect(f).to be >= d
			expect(1).to be_between(1,5).inclusive
			expect(6).to be_between(1,7).exclusive
			expect(5).not_to be_between(6,19)
			expect(100).to  be_within(10).of(110)
			expect(1..6).not_to cover(7)
			expect(1..3).to cover(2)
		end
	end

	context 'Other useful matcher' do 
		it "return a value of regular expression" do
			s = 'lnd38'
			e = '123'
			b = 344
			expect(s).to match(/[a-zA-Z0-9]/)
			expect(e).to match(/\d{3}/)
			expect(b).not_to match(/\d{3}/)
		end
		it "return a value of object type" do
			class Person
				attr_accessor :name
			end
            p = Person.new
            p.name = 'kaky'

			@num = 5
			a = 'kaky'
			expect(a).to be_an_instance_of(String)
            expect(p).to have_attributes(:name => 'kaky')
            expect(@num).to satisfy {|v| v < 9 && v.odd?}
            expect(a).to repond_to(:length)
            expect(3).to satisfy do |x| 
               x.odd? && x.integer? || x.nonzero?
            end

		end
	end
	context 'observation macher' do
		it "return a value" do
		a = 4
		expect(a << 1).to change(a, :empty?).from(true).to(false)
	end
	end

end
 
