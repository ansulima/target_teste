require 'spec_helper'

describe 'StringCounter' do
    let(:string_counter) { StringCounter.new('berg') } 

    describe "functions" do
        it "length_total" do
            expect(string_counter.length_total).to eql(4)
        end
    end
end