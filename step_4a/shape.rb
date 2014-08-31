module Step8

  class Shape

    def print(shape_printer)
      fail 'subclass responsibility'
    end

    def serialize
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(shape_printer)
      shape_printer.print_triangle(self)
    end

    def serialize
      serializer = XmlSerializer.new

      serializer.start_tag 'Triangle'
      serializer.text self.to_s
      serializer.end_tag 'Triangle'

      serializer.xml
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(shape_printer)
      shape_printer.print_square(self)
    end

    def serialize
      serializer = XmlSerializer.new

      serializer.start_tag 'Square'
      serializer.text self.to_s
      serializer.end_tag 'Square'

      serializer.xml
    end

    def to_s
      '■'
    end

  end

end