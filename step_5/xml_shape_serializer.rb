require '../step_5/shape_visitor'

module Step10

  class XmlShapeSerializer < ShapeVisitor

    def initialize
      @serializer = Step10::XmlSerializer.new
    end

    def visit_triangle(a_triangle)
      @serializer.start_tag 'Triangle'
      @serializer.text a_triangle.to_s
      @serializer.end_tag 'Triangle'

      @serializer.xml
    end

    def visit_square(a_square)
      @serializer.start_tag 'Square'
      @serializer.text a_square.to_s
      @serializer.end_tag 'Square'

      @serializer.xml
    end

  end

end