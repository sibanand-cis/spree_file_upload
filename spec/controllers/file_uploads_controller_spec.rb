require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FileUploadsController do

  # This should return the minimal set of attributes required to create a valid
  # FileUpload. As you add validations to FileUpload, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "file_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FileUploadsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all file_uploads as @file_uploads" do
      file_upload = FileUpload.create! valid_attributes
      get :index, {}, valid_session
      assigns(:file_uploads).should eq([file_upload])
    end
  end

  describe "GET show" do
    it "assigns the requested file_upload as @file_upload" do
      file_upload = FileUpload.create! valid_attributes
      get :show, {:id => file_upload.to_param}, valid_session
      assigns(:file_upload).should eq(file_upload)
    end
  end

  describe "GET new" do
    it "assigns a new file_upload as @file_upload" do
      get :new, {}, valid_session
      assigns(:file_upload).should be_a_new(FileUpload)
    end
  end

  describe "GET edit" do
    it "assigns the requested file_upload as @file_upload" do
      file_upload = FileUpload.create! valid_attributes
      get :edit, {:id => file_upload.to_param}, valid_session
      assigns(:file_upload).should eq(file_upload)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FileUpload" do
        expect {
          post :create, {:file_upload => valid_attributes}, valid_session
        }.to change(FileUpload, :count).by(1)
      end

      it "assigns a newly created file_upload as @file_upload" do
        post :create, {:file_upload => valid_attributes}, valid_session
        assigns(:file_upload).should be_a(FileUpload)
        assigns(:file_upload).should be_persisted
      end

      it "redirects to the created file_upload" do
        post :create, {:file_upload => valid_attributes}, valid_session
        response.should redirect_to(FileUpload.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved file_upload as @file_upload" do
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        post :create, {:file_upload => { "file_name" => "invalid value" }}, valid_session
        assigns(:file_upload).should be_a_new(FileUpload)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        post :create, {:file_upload => { "file_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested file_upload" do
        file_upload = FileUpload.create! valid_attributes
        # Assuming there are no other file_uploads in the database, this
        # specifies that the FileUpload created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FileUpload.any_instance.should_receive(:update_attributes).with({ "file_name" => "MyString" })
        put :update, {:id => file_upload.to_param, :file_upload => { "file_name" => "MyString" }}, valid_session
      end

      it "assigns the requested file_upload as @file_upload" do
        file_upload = FileUpload.create! valid_attributes
        put :update, {:id => file_upload.to_param, :file_upload => valid_attributes}, valid_session
        assigns(:file_upload).should eq(file_upload)
      end

      it "redirects to the file_upload" do
        file_upload = FileUpload.create! valid_attributes
        put :update, {:id => file_upload.to_param, :file_upload => valid_attributes}, valid_session
        response.should redirect_to(file_upload)
      end
    end

    describe "with invalid params" do
      it "assigns the file_upload as @file_upload" do
        file_upload = FileUpload.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        put :update, {:id => file_upload.to_param, :file_upload => { "file_name" => "invalid value" }}, valid_session
        assigns(:file_upload).should eq(file_upload)
      end

      it "re-renders the 'edit' template" do
        file_upload = FileUpload.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FileUpload.any_instance.stub(:save).and_return(false)
        put :update, {:id => file_upload.to_param, :file_upload => { "file_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested file_upload" do
      file_upload = FileUpload.create! valid_attributes
      expect {
        delete :destroy, {:id => file_upload.to_param}, valid_session
      }.to change(FileUpload, :count).by(-1)
    end

    it "redirects to the file_uploads list" do
      file_upload = FileUpload.create! valid_attributes
      delete :destroy, {:id => file_upload.to_param}, valid_session
      response.should redirect_to(file_uploads_url)
    end
  end

end
