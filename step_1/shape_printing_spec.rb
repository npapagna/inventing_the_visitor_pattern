require 'rspec'
require '../printer'
require '../step_1/shape'

describe 'shape printing using an inkjet printer' do

  it 'prints a triangle' do
    triangle = Step1::Triangle.new

    printed_shape = triangle.print()

    printed_shape.should == 'Calibrating, Feeding paper, ▲'
  end

  it 'prints a square' do
    square = Step1::Square.new

    printed_shape = square.print()

    printed_shape.should == 'Calibrating, Feeding paper, ■'
  end

end
