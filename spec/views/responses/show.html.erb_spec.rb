require 'spec_helper'

describe 'responses/show.html.erb' do
  before(:each) do
    @response = assign(:response, stub_model(Response,
                                             user_id: 1,
                                             correct: false,
                                             corrected: 'Corrected',
                                             uncorrected: 'Uncorrected'
    ))
  end

  it 'renders attributes in <p>' do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Corrected/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Uncorrected/)
  end
end
