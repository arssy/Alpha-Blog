require 'rails_helper'

RSpec.describe ArticlesController, regressor: true, type: :routing do
  # === Routes (REST) ===
  it { should route(:patch, '/articles/1').to('articles#update', {:id=>"1"}) } 
  it { should route(:post, '/articles').to('articles#create', {}) } 
  it { should route(:delete, '/articles/1').to('articles#destroy', {:id=>"1"}) } 
  it { should route(:get, '/articles').to('articles#index', {}) }
  it { should route(:get, '/articles/1').to('articles#show', {:id=>"1"}) }
  it { should route(:get, '/articles/1/edit').to('articles#edit', {:id=>"1"}) }
  it { should route(:get, '/articles/new').to('articles#new', {}) }
  # === Callbacks (Before) ===
  it { should use_before_filter(:set_turbolinks_location_header_from_session) }
  it { should use_before_filter(:verify_authenticity_token) }
  it { should use_before_filter(:set_article) }
  it { should use_before_filter(:require_user) }
  it { should use_before_filter(:require_same_user) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
  
end