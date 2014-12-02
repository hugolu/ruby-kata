require_relative "../../lib/kata"

describe "Kata" do

    it "should be passed" do
        expect(true).to eq(true)
    end

    specify "true is true" do
    	expect(true).to eq(true)
    end

    example "true is not false" do
    	expect(true).to_not eq(false)
    end

end