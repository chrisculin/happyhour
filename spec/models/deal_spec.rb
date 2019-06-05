require 'rails_helper'

RSpec.describe Deal, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:bar) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
