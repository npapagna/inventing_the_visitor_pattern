module Step5

  class Shape

    def print(a_printer)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(a_printer)
      shape_printer = Step5::ShapePrinter.new a_printer
      shape_printer.print_triangle(self)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(a_printer)
      shape_printer = Step5::ShapePrinter.new a_printer
      shape_printer.print_square(self)
    end

    def to_s
      '■'
    end

  end

end