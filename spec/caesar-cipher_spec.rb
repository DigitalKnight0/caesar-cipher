#spec/caesar-cipher_spec.rb
require "./lib/ceasar-cipher.rb"

describe "#cipher" do 
  it "Returns the same string at factor 0" do
    expect(cipher("Hello World!",0)).to eql("Hello World!")
  end

  it "Respects uppercase and lowercase" do 
    expect(cipher("THIS is a String",3)).to eql("WKLV lv d Vwulqj")
  end

  it "works only on letters A-Z and ignores symbols" do 
    expect(cipher("!@#$%%^&*$%^@%abcd",2)).to eql("!@#$%%^&*$%^@%cdef")
  end

  it "shifts the letters correctly" do
    expect(cipher("A big black dog",5)).to eql("F gnl gqfhp itl")
  end

  it "wraps correctly from a to z" do
    expect(cipher("w x y z",5)).to eql("b c d e")
  end

  it "works on factors greater than 26" do 
    expect(cipher("Hello World!",53)).to eql("Ifmmp Xpsme!")
  end
end