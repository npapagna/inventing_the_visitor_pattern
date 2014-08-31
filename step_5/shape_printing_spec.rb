require 'rspec'
require '../printer'
require '../step_5/shape'
require '../step_5/shape_printer'

describe 'shape printing using an inkjet printer' do

  it 'prints a triangle' do
    triangle = Step10::Triangle.new
    inkjet_printer = InkjetPrinter.new
    shape_printer = Step10::InkjetShapePrinter.new inkjet_printer

    printed_shape = triangle.accept(shape_printer)

    printed_shape.should == 'Calibrating, Feeding paper, ▲'
  end

  it 'prints a square' do
    square = Step10::Square.new
    inkjet_printer = InkjetPrinter.new
    shape_printer = Step10::InkjetShapePrinter.new inkjet_printer

    printed_shape = square.accept(shape_printer)

    printed_shape.should == 'Calibrating, Feeding paper, ■'
  end

end

describe 'shape printing using a laser printer' do

  it 'prints a triangle' do
    triangle = Step10::Triangle.new
    laser_printer = LaserPrinter.new
    shape_printer = Step10::LaserShapePrinter.new laser_printer

    printed_shape = triangle.accept(shape_printer)

    printed_shape.should == 'Preparing laser stuff, ▲'
  end

  it 'prints a square' do
    square = Step10::Square.new
    laser_printer = LaserPrinter.new
    shape_printer = Step10::LaserShapePrinter.new laser_printer

    printed_shape = square.accept(shape_printer)

    printed_shape.should == 'Preparing laser stuff, ■'
  end

end
