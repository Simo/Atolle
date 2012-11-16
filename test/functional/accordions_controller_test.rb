require 'test_helper'

class AccordionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Accordion.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Accordion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Accordion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to accordion_url(assigns(:accordion))
  end

  def test_edit
    get :edit, :id => Accordion.first
    assert_template 'edit'
  end

  def test_update_invalid
    Accordion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Accordion.first
    assert_template 'edit'
  end

  def test_update_valid
    Accordion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Accordion.first
    assert_redirected_to accordion_url(assigns(:accordion))
  end

  def test_destroy
    accordion = Accordion.first
    delete :destroy, :id => accordion
    assert_redirected_to accordions_url
    assert !Accordion.exists?(accordion.id)
  end
end
