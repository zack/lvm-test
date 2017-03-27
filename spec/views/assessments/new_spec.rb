require 'rails_helper'

RSpec.describe 'assessments/new', type: :view do
  before(:each) do
    assign(:assessment, Assessment.new)
  end

  it 'should renders the new form' do
    render

    assert_select 'form[action=?][method=?]', assessments_path, 'post' do
    end
  end
end
