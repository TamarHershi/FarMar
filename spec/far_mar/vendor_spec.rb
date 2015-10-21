require "spec_helper"

describe FarMar::Vendor do
  before :each do
    @vendor =FarMar::Vendor.new(6,"Zulauf and Sons",8,1)
  end

  describe "initialize" do
    it "creat a new market" do
      expect(@vendor).to be_an_instance_of FarMar::Vendor
    end
  end

  describe ".all" do
    it "returns a collection of Vendors instances" do
      expect(FarMar::Vendor.all).to be_an(Array)
    end
  end

  describe "find" do
    it "return the vendor, usind id " do
      expect(FarMar::Vendor.find(6).name).to eq("Zulauf and Sons")
    end
  end

    describe "market" do
      it "return a vendor array" do
        expect(FarMar::Vendor.market(2)).to be_an_instance_of(Array)
      end

      it "return the right array" do
        vendor_array = FarMar::Vendor.market(1)
        vendor_array.each do |vendor|
          (@check = true) if vendor.id == 1
        end
        expect(@check).to be_truthy
      end
    end

    describe "products" do
      # it "returns a collection of with the vendor id" do
      #
      # end

      it "return an Array of products" do
        expect(@vendor.products).to be_an (Array)
      end

    end



end
