require 'spec_helper'

RSpec.describe 'Fibonacci' do
        describe "Fibonacci.fibonacci" do
            [
                [0, 0],
                [1, 1],
                [2, 1],
                [3, 2],
                [4, 3],
                [5, 5],
                [6, 8],
                [7, 13],
                [8, 21]
        ].each do |n, expected|
            it "retorna #{expected} para n = #{n}" do
            expect(Fibonacci.fibonacci(n)).to eq(expected)
            end
        end
    end

    describe "Fibonacci.pertence_fibonacci?" do
        [
            [0, true],
            [1, true],
            [2, true],
            [3, true],
            [5, true],
            [8, true],
            [4, false],
            [6, false],
            [7, false],
            [9, false]
        ].each do |n, expected|
            it "retorna #{expected} para n = #{n}" do
            expect(Fibonacci.fibonacci?(n)).to eq(expected)
            end
        end
    end
end