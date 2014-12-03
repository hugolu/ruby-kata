require_relative "../../lib/FizzBuzz"

describe FizzBuzz do

	context "normal number" do
		
		specify "convert(1) to 1" do
			expect(FizzBuzz.convert(1)).to eq("1")
		end

		specify "convert(2) to 2" do
			expect(FizzBuzz.convert(2)).to eq("2")
		end

		specify "convert(4) to 4" do
			expect(FizzBuzz.convert(4)).to eq("4")
		end

	end

	context "multiple of 3" do

		specify "convert(3) to Fizz" do
			expect(FizzBuzz.convert(3)).to eq("Fizz")
		end

		specify "convert(6) to Fizz" do
			expect(FizzBuzz.convert(6)).to eq("Fizz")
		end

		specify "convert(9) to Fizz" do
				expect(FizzBuzz.convert(9)).to eq("Fizz")
		end

	end

	context "multiple of 5" do

		specify "convert(5) to Buzz" do
			expect(FizzBuzz.convert(5)).to eq("Buzz")
		end
		specify "convert(10) to Buzz" do
			expect(FizzBuzz.convert(10)).to eq("Buzz")
		end

		specify "convert(20) to Buzz" do
			expect(FizzBuzz.convert(20)).to eq("Buzz")
		end
		
	end
	
	context "multiple of 3 and 5" do

		specify "convert(15) to FizzBuzz" do
				expect(FizzBuzz.convert(15)).to eq("FizzBuzz")
		end

		specify "convert(30) to FizzBuzz" do
			expect(FizzBuzz.convert(30)).to eq("FizzBuzz")
		end

		specify "convert(45) to FizzBuzz" do
			expect(FizzBuzz.convert(45)).to eq("FizzBuzz")
		end

	end

end