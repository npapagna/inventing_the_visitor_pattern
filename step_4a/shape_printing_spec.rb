require 'rspec'
require '../printer'
require '../step_4a/shape'
require '../step_4a/shape_printer'

describe 'shape printing using an inkjet printer' do

  it 'prints a triangle' do
    triangle = Step8::Triangle.new
    inkjet_printer = InkjetPrinter.new
    shape_printer = Step8::InkjetShapePrinter.new inkjet_printer

    printed_shape = triangle.print(shape_printer)

    printed_shape.should == 'Calibrating, Feeding paper, ▲'
  end

  it 'prints a square' do
    square = Step8::Square.new
    inkjet_printer = InkjetPrinter.new
    shape_printer = Step8::InkjetShapePrinter.new inkjet_printer

    printed_shape = square.print(shape_printer)

    printed_shape.should == 'Calibrating, Feeding paper, ■'
  end

end

describe 'shape printing using a laser printer' do

  it 'prints a triangle' do
    triangle = Step8::Triangle.new
    laser_printer = LaserPrinter.new
    shape_printer = Step8::LaserShapePrinter.new laser_printer

    printed_shape = triangle.print(shape_printer)

    printed_shape.should == 'Preparing laser stuff, ▲'
  end

  it 'prints a square' do
    square = Step8::Square.new
    laser_printer = LaserPrinter.new
    shape_printer = Step8::LaserShapePrinter.new laser_printer

    printed_shape = square.print(shape_printer)

    printed_shape.should == 'Preparing laser stuff, ■'
  end

end
