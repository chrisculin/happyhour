require 'rails_helper'

RSpec.describe Favorite, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:deal) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_one(:bar) }

    end

    describe "Validations" do
      
    end
end
