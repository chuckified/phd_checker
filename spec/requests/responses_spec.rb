require 'spec_helper'

describe 'Responses' do
  describe 'GET /responses' do
    it 'works! (now write some real specs)' do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get responses_path
      expect(response.status).to be(200)
    end
  end
end
