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

describe NotesController do

  # This should return the minimal set of attributes required to create a valid
  # Note. As you add validations to Note, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all notes as @notes" do
      note = Note.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:notes)).to eq([note])
    end
  end

  describe "GET show" do
    it "assigns the requested note as @note" do
      note = Note.create! valid_attributes
      get :show, {:id => note.to_param}, valid_session
      expect(assigns(:note)).to eq(note)
    end
  end

  describe "GET new" do
    it "assigns a new note as @note" do
      get :new, {}, valid_session
      expect(assigns(:note)).to be_a_new(Note)
    end
  end

  describe "GET edit" do
    it "assigns the requested note as @note" do
      note = Note.create! valid_attributes
      get :edit, {:id => note.to_param}, valid_session
      expect(assigns(:note)).to eq(note)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Note" do
        expect {
          post :create, {:note => valid_attributes}, valid_session
        }.to change(Note, :count).by(1)
      end

      it "assigns a newly created note as @note" do
        post :create, {:note => valid_attributes}, valid_session
        expect(assigns(:note)).to be_a(Note)
        expect(assigns(:note)).to be_persisted
      end

      it "redirects to the created note" do
        post :create, {:note => valid_attributes}, valid_session
        expect(response).to redirect_to(Note.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved note as @note" do
        # Trigger the behavior that occurs when invalid params are submitted
        Note.any_instance.stub(:save).and_return(false)
        post :create, {:note => { "title" => "invalid value" }}, valid_session
        expect(assigns(:note)).to be_a_new(Note)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Note.any_instance.stub(:save).and_return(false)
        post :create, {:note => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested note" do
        note = Note.create! valid_attributes
        # Assuming there are no other notes in the database, this
        # specifies that the Note created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Note).to receive(:update).with({ "title" => "MyString" })
        put :update, {:id => note.to_param, :note => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested note as @note" do
        note = Note.create! valid_attributes
        put :update, {:id => note.to_param, :note => valid_attributes}, valid_session
        expect(assigns(:note)).to eq(note)
      end

      it "redirects to the note" do
        note = Note.create! valid_attributes
        put :update, {:id => note.to_param, :note => valid_attributes}, valid_session
        expect(response).to redirect_to(note)
      end
    end

    describe "with invalid params" do
      it "assigns the note as @note" do
        note = Note.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Note.any_instance.stub(:save).and_return(false)
        put :update, {:id => note.to_param, :note => { "title" => "invalid value" }}, valid_session
        expect(assigns(:note)).to eq(note)
      end

      it "re-renders the 'edit' template" do
        note = Note.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Note.any_instance.stub(:save).and_return(false)
        put :update, {:id => note.to_param, :note => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested note" do
      note = Note.create! valid_attributes
      expect {
        delete :destroy, {:id => note.to_param}, valid_session
      }.to change(Note, :count).by(-1)
    end

    it "redirects to the notes list" do
      note = Note.create! valid_attributes
      delete :destroy, {:id => note.to_param}, valid_session
      expect(response).to redirect_to(notes_url)
    end
  end

end
