require_relative "../../lib/kata"

describe "Expections" do
	
	context "Equivalence" do
		specify "expect(actual).to eq(expected)" do
			# passes if actual == expected
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).to eq(str2)
		end

		specify "expect(actual).to eql(expected)" do
			# passes if actual.eql?(expected)
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).to eql(str2)
		end

		specify "expect(actual).not_to eql(not_expected)" do
			# passes if not(actual.eql?(expected))
			obj1 = Object.new
			obj2 = Object.new
			expect(obj1).not_to eql(obj2)
		end
	end

	context "Identity" do
		specify "expect(actual).to equal(expected)" do
			# passes if actual.equal?(expected)
			str1 = "hello world"
			str2 = str1
			expect(str1).to equal(str2)
		end

		specify "expect(actual).to be(expected)" do
			# passes if actual.equal?(expected)
			str1 = "hello world"
			str2 = str1
			expect(str1).to be(str2)
		end

		specify "expect(actual).not_to be(expected)" do
			# passes if not(actual.equal?(expected))
			str1 = "hello world"
			str2 = "hello world"
			expect(str1).not_to be(str2)
		end
	end

	context "Comparisons" do
		specify "expect(actual).to be >  expected" do
			expect(3).to be > 2
		end

		specify "expect(actual).to be >=  expected" do
			expect(3).to be >= 3
		end

		specify "expect(actual).to be <=  expected" do
			expect(3).to be <= 3
		end

		specify "expect(actual).to be <  expected" do
			expect(2).to be < 3
		end

		specify "expect(actual).to be_within(delta).of(expected)" do
			expect(5).to be_within(2).of(7)	# 7-2 < 5 < 7+2
		end
	end

	context "Regular expressions" do
		specify "expect(actual).to match(/expression/)" do
			expect("ABCDEFG").to match(/CDE/)
		end

		specify "expect(actual).not_to match(/expression/)" do
			expect("ABCDEFG").not_to match(/CE/)
		end
	end

	context "Types/classes" do
		specify "expect(actual).to be_an_instance_of(expected)" do
			# passes if actual.class == expected
			expect(Kata.new).to be_an_instance_of(Kata)
		end

		specify "expect(actual).to be_a(expected)" do
			# passes if actual.is_a?(expected)
			class Kaka < Kata; end
			expect(Kaka.new).to be_a(Kata)
		end

		specify "expect(actual).to be_an(expected)" do
			# an alias for be_a
			class Kaka < Kata; end
			expect(Kaka.new).to be_an(Kata)
		end

		specify "expect(actual).to be_a_kind_of(expected)" do
			# another alias
			class Kaka < Kata; end
			expect(Kaka.new).to be_a_kind_of(Kata)
		end
	end

	context "Truthiness" do
		specify "expect(actual).to be_truthy" do
			# passes if actual is truthy (not nil or false)
			expect(true).to be_truthy
			expect(1).to be_truthy
		end

		specify "expect(actual).to be true" do
			# passes if actual == true
			expect(true).to be true
		end

		specify "expect(actual).to be_falsy" do
			# passes if actual is falsy (nil or false)
			expect(false).to be_falsy
			expect(nil).to be_falsy
		end

		specify "expect(actual).to be false" do
			# passes if actual == false
			expect(false).to be false
		end

		specify "expect(actual).to be_nil" do
			# passes if actual is nil
			expect(nil).to be_nil
		end

		specify "expect(actual).to_not be_nil" do
			# passes if actual is not nil
			expect(1).to_not be_nil
		end
	end
end 