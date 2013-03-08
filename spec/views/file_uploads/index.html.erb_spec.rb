require 'spec_helper'

describe "file_uploads/index" do
  before(:each) do
    assign(:file_uploads, [
      stub_model(FileUpload,
        :file_name => "File Name"
      ),
      stub_model(FileUpload,
        :file_name => "File Name"
      )
    ])
  end

  it "renders a list of file_uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
  end
end
