require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  before do
    @user = create(:user)
    #Factory for task not working 
    @task = Task.create!(name: 'TODO', description: 'TODO 100', completed: true, user_id: @user.id)
  end

  it 'show' do
    sign_in @user
    get :show, params: { id: @task.id }
    expect(response.status).to eq(200)
  end

  it 'responds a 302 response (not authorized)' do
    # nao foi passado o sign_in @user por isso nao deve autorizar a exibição
    get :index
    expect(response).to have_http_status(302)
  end

  it "an user trying to access another user's task, answer code 401" do
    another_user = create(:user)
    sign_in another_user
    get :show, params: { id: @task.id }
    expect(response.status).to eq(401)
  end

end
