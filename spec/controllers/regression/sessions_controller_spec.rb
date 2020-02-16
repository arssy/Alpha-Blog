require 'rails_helper'

RSpec.describe SessionsController, regressor: true, type: :routing do
  # === Routes (REST) ===
  it { should route(:post, '/login').to('sessions#create', {}) } 
  it { should route(:delete, '/logout').to('sessions#destroy', {}) } 
  it { should route(:get, '/login').to('sessions#new', {}) }
  # === Callbacks (Before) ===
  it { should use_before_filter(:set_turbolinks_location_header_from_session) }
  it { should use_before_filter(:verify_authenticity_token) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
  
end