require 'rspec'
require '../printer'
require '../step_2b/shape'

describe 'shape printing using an inkjet printer' do

  it 'prints a triangle' do
    triangle = Step3::Triangle.new

    printed_shape = triangle.print(InkjetPrinter.new)

    printed_shape.should == 'Calibrating, Feeding paper, ▲'
  end

  it 'prints a square' do
    square = Step3::Square.new

    printed_shape = square.print(InkjetPrinter.new)

    printed_shape.should == 'Calibrating, Feeding paper, ■'
  end

end

describe 'shape printing using a laser printer' do

  it 'prints a triangle' do
    triangle = Step3::Triangle.new

    printed_shape = triangle.print(LaserPrinter.new)

    printed_shape.should == 'Preparing laser stuff, ▲'
  end

  it 'prints a square' do
    square = Step3::Square.new

    printed_shape = square.print(LaserPrinter.new)

    printed_shape.should == 'Preparing laser stuff, ■'
  end

end
