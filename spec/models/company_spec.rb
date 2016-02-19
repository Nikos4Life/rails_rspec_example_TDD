require 'rails_helper'

RSpec.describe Company, type: :model do
	context "when saving a company" do
		it "has a valid factory" do
			expect(build(:company)).to be_valid
		end
		it "is invalid when no email provided" do
			new_company = build(:company, company_name:  nil)
			
			new_company.valid?

			expect(new_company.errors[:company_name].any?).to eq(true)
		end
	end  
end
