require 'rails_helper'

RSpec.describe Article, regressor: true do

  # === Relations ===
  it { is_expected.to belong_to :user }
  
  # === Nested Attributes ===
  

  # === Database (Columns) ===
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :description }
  it { is_expected.to have_db_column :is_active }
  it { is_expected.to have_db_column :created_at }
  it { is_expected.to have_db_column :updated_at }
  it { is_expected.to have_db_column :user_id }

  # === Database (Indexes) ===
  

  # === Validations (Length) ===
  

  # === Validations (Presence) ===
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :user_id }

  # === Validations (Numericality) ===

  
  # === Enums ===
  
  
end