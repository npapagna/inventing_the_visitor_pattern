require 'rspec'
require '../printer'
require '../step_5/shape'
require '../step_5/xml_serializer'
require '../step_5/xml_shape_serializer'

describe 'serialize a shape to xml' do

  it 'returns the xml representation of a triangle' do
    triangle = Step10::Triangle.new
    shape_serializer = Step10::XmlShapeSerializer.new

    shape_xml = triangle.accept(shape_serializer)

    shape_xml.should == '<Triangle>▲</Triangle>'
  end

  it 'returns the xml representation of a square' do
    square = Step10::Square.new
    shape_serializer = Step10::XmlShapeSerializer.new

    shape_xml = square.accept(shape_serializer)

    shape_xml.should == '<Square>■</Square>'
  end

end