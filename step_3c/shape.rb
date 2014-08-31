module Step7

  class Shape

    def print(shape_printer)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(shape_printer)
      shape_printer.print_triangle(self)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(shape_printer)
      shape_printer.print_square(self)
    end

    def to_s
      '■'
    end

  end

end