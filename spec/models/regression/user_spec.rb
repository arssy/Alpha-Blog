require 'rails_helper'

RSpec.describe User, regressor: true do

  # === Relations ===
  
  
  it { is_expected.to have_many :articles }

  # === Nested Attributes ===
  

  # === Database (Columns) ===
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :username }
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :created_at }
  it { is_expected.to have_db_column :updated_at }
  it { is_expected.to have_db_column :password_digest }

  # === Database (Indexes) ===
  

  # === Validations (Length) ===
  

  # === Validations (Presence) ===
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :password }

  # === Validations (Numericality) ===
  

  
  # === Enums ===
  
  
end