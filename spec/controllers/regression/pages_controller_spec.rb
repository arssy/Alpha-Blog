require 'rails_helper'

RSpec.describe PagesController, regressor: true, type: :routing do
  # === Routes (REST) ===
  it { should route(:get, '/').to('pages#index', {}) }
  # === Callbacks (Before) ===
  it { should use_before_filter(:set_turbolinks_location_header_from_session) }
  it { should use_before_filter(:verify_authenticity_token) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
  
end