require 'rails_helper'

RSpec.describe Deal, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    it { should belong_to(:bar) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
