require 'rails_helper'

RSpec.describe Bar, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:deals) }

    end

    describe "InDirect Associations" do

    it { should have_many(:comments) }

    it { should have_many(:photos) }

    end

    describe "Validations" do
      
    end
end
