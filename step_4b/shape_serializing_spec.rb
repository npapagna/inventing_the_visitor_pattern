require 'rspec'
require '../printer'
require '../step_4b/shape'
require '../step_4b/xml_serializer'
require '../step_4b/xml_shape_serializer'

describe 'serialize a shape to xml' do

  it 'returns the xml representation of a triangle' do
    triangle = Step9::Triangle.new
    shape_serializer = Step9::XmlShapeSerializer.new

    shape_xml = triangle.serialize(shape_serializer)

    shape_xml.should == '<Triangle>▲</Triangle>'
  end

  it 'returns the xml representation of a square' do
    square = Step9::Square.new
    shape_serializer = Step9::XmlShapeSerializer.new

    shape_xml = square.serialize(shape_serializer)

    shape_xml.should == '<Square>■</Square>'
  end

end