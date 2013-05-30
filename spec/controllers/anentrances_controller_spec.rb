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

describe AnentrancesController do

  # This should return the minimal set of attributes required to create a valid
  # Anentrance. As you add validations to Anentrance, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnentrancesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all anentrances as @anentrances" do
      anentrance = Anentrance.create! valid_attributes
      get :index, {}, valid_session
      assigns(:anentrances).should eq([anentrance])
    end
  end

  describe "GET show" do
    it "assigns the requested anentrance as @anentrance" do
      anentrance = Anentrance.create! valid_attributes
      get :show, {:id => anentrance.to_param}, valid_session
      assigns(:anentrance).should eq(anentrance)
    end
  end

  describe "GET new" do
    it "assigns a new anentrance as @anentrance" do
      get :new, {}, valid_session
      assigns(:anentrance).should be_a_new(Anentrance)
    end
  end

  describe "GET edit" do
    it "assigns the requested anentrance as @anentrance" do
      anentrance = Anentrance.create! valid_attributes
      get :edit, {:id => anentrance.to_param}, valid_session
      assigns(:anentrance).should eq(anentrance)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Anentrance" do
        expect {
          post :create, {:anentrance => valid_attributes}, valid_session
        }.to change(Anentrance, :count).by(1)
      end

      it "assigns a newly created anentrance as @anentrance" do
        post :create, {:anentrance => valid_attributes}, valid_session
        assigns(:anentrance).should be_a(Anentrance)
        assigns(:anentrance).should be_persisted
      end

      it "redirects to the created anentrance" do
        post :create, {:anentrance => valid_attributes}, valid_session
        response.should redirect_to(Anentrance.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved anentrance as @anentrance" do
        # Trigger the behavior that occurs when invalid params are submitted
        Anentrance.any_instance.stub(:save).and_return(false)
        post :create, {:anentrance => { "name" => "invalid value" }}, valid_session
        assigns(:anentrance).should be_a_new(Anentrance)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Anentrance.any_instance.stub(:save).and_return(false)
        post :create, {:anentrance => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested anentrance" do
        anentrance = Anentrance.create! valid_attributes
        # Assuming there are no other anentrances in the database, this
        # specifies that the Anentrance created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Anentrance.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => anentrance.to_param, :anentrance => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested anentrance as @anentrance" do
        anentrance = Anentrance.create! valid_attributes
        put :update, {:id => anentrance.to_param, :anentrance => valid_attributes}, valid_session
        assigns(:anentrance).should eq(anentrance)
      end

      it "redirects to the anentrance" do
        anentrance = Anentrance.create! valid_attributes
        put :update, {:id => anentrance.to_param, :anentrance => valid_attributes}, valid_session
        response.should redirect_to(anentrance)
      end
    end

    describe "with invalid params" do
      it "assigns the anentrance as @anentrance" do
        anentrance = Anentrance.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Anentrance.any_instance.stub(:save).and_return(false)
        put :update, {:id => anentrance.to_param, :anentrance => { "name" => "invalid value" }}, valid_session
        assigns(:anentrance).should eq(anentrance)
      end

      it "re-renders the 'edit' template" do
        anentrance = Anentrance.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Anentrance.any_instance.stub(:save).and_return(false)
        put :update, {:id => anentrance.to_param, :anentrance => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested anentrance" do
      anentrance = Anentrance.create! valid_attributes
      expect {
        delete :destroy, {:id => anentrance.to_param}, valid_session
      }.to change(Anentrance, :count).by(-1)
    end

    it "redirects to the anentrances list" do
      anentrance = Anentrance.create! valid_attributes
      delete :destroy, {:id => anentrance.to_param}, valid_session
      response.should redirect_to(anentrances_url)
    end
  end

end