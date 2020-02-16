require 'rails_helper'

RSpec.describe UsersController, regressor: true, type: :routing do
  # === Routes (REST) ===
  it { should route(:patch, '/users/1').to('users#update', {:id=>"1"}) } 
  it { should route(:post, '/users').to('users#create', {}) } 
  it { should route(:delete, '/users/1').to('users#destroy', {:id=>"1"}) } 
  it { should route(:get, '/users').to('users#index', {}) }
  it { should route(:get, '/users/1').to('users#show', {:id=>"1"}) }
  it { should route(:get, '/users/1/edit').to('users#edit', {:id=>"1"}) }
  it { should route(:get, '/signup').to('users#new', {}) }
  # === Callbacks (Before) ===
  it { should use_before_filter(:set_turbolinks_location_header_from_session) }
  it { should use_before_filter(:verify_authenticity_token) }
  it { should use_before_filter(:set_user) }
  it { should use_before_filter(:require_user) }
  it { should use_before_filter(:require_same_user) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
  
end