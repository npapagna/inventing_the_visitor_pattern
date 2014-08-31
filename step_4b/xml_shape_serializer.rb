module Step9

  class XmlShapeSerializer

    def initialize
      @serializer = Step9::XmlSerializer.new
    end

    def serialize_triangle(a_triangle)
      @serializer.start_tag 'Triangle'
      @serializer.text a_triangle.to_s
      @serializer.end_tag 'Triangle'

      @serializer.xml
    end

    def serialize_square(a_square)
      @serializer.start_tag 'Square'
      @serializer.text a_square.to_s
      @serializer.end_tag 'Square'

      @serializer.xml
    end

  end

end