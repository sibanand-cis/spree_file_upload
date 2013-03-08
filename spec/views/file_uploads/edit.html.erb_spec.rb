require 'spec_helper'

describe "file_uploads/edit" do
  before(:each) do
    @file_upload = assign(:file_upload, stub_model(FileUpload,
      :file_name => "MyString"
    ))
  end

  it "renders the edit file_upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => file_uploads_path(@file_upload), :method => "post" do
      assert_select "input#file_upload_file_name", :name => "file_upload[file_name]"
    end
  end
end
