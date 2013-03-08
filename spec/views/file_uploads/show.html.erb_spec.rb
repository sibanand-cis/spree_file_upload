require 'spec_helper'

describe "file_uploads/show" do
  before(:each) do
    @file_upload = assign(:file_upload, stub_model(FileUpload,
      :file_name => "File Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File Name/)
  end
end
