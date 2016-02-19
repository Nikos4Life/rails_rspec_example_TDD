require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
 context 'GET #show' do
 	context 'the company exists' do
 		before(:each) do
 			@company = create(:company)
 			get :show, {id: @company.id}
 		end

 		it 'responds successfully with an HTTP 200 status code'do
 			expect(response).to have_http_status(200)
 		end
 		it 'renders the show template ' do
 			expect(response).to  render_template :show
 		end
 		it 'gets the right company ' do
 			expect(assigns(:company)).to  eq(@company)
 		end
 	end
 end
 context 'GET #index' do
 	# let(:create_company){create(:company)}
 	context 'the company exists' do
 		before(:each) do
 			@companies = []
 			10.times do
 				@company = create(:company)
 				@companies.push(@company)
 			end
 			get :index, {companies: @companies}
 		end
 		it 'responds successfully with an HTTP 200 status code'do
 			expect(response).to have_http_status(200)
 		end
 		it 'renders the show template ' do
 			expect(response).to  render_template :index
 		end
 		it 'gets the right company ' do
 			expect(assigns(:companies)).to  eq(@companies)
 		end
 	end
 end
end
