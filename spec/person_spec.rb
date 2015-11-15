require 'person'

describe 'Person' do 
	context '#myname' do 

      it "return a values of name" do
      	@name = "kaky"
      	expect(@name).to eq("kaky")
      end

      it "return a values of age not eqal to 55 " do
      	@age != 55
      	expect(@age).to_not eq(55)
        end


      describe 'Expectation matchers' do 
      it "return the value of an equivalence" do 
            x = 12, y != 32
            expect(x).to eq(12)
            expect(y).to_not(32)
      end
    end
end
end





