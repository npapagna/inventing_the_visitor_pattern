require 'rspec'
require '../printer'
require '../step_4a/shape'
require '../step_4a/xml_serializer'

describe 'serialize a shape to xml' do

  it 'returns the xml representation of a triangle' do
    triangle = Step8::Triangle.new

    shape_xml = triangle.serialize()

    shape_xml.should == '<Triangle>▲</Triangle>'
  end

  it 'returns the xml representation of a square' do
    square = Step8::Square.new

    shape_xml = square.serialize()

    shape_xml.should == '<Square>■</Square>'
  end

end