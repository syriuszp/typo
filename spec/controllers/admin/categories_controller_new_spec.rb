require 'spec_helper'

describe Admin::CategoriesController do
  render_views

  before(:each) do
    Factory(:blog)
    #TODO Delete after removing fixtures
    Profile.delete_all
    henri = Factory(:user, :login => 'henri', :profile => Factory(:profile_admin, :label => Profile::ADMIN))
    request.session = { :user => henri.id }
  end
  
  describe "POST" do
    it "create new category" do
      category = mock_model(Category).as_null_object
      Category.should_receive(:new).with("name" => "foobar").and_return(category)
      post :create, :category => {"name" => "foobar"}
    end
    it "save new category" do
      category = mock_model(Category)
      Category.stub(:new).and_return(category)
      category.should_receive(:save)
      post :create
    end
    it "redirects to the Categories index" do
      post :create
      response.should redirect_to(:action => "index")
    end
  end

end
