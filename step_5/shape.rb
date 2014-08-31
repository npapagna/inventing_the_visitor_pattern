module Step10

  class Shape

    def accept(a_shape_visitor)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def accept(a_shape_visitor)
      a_shape_visitor.visit_triangle(self)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def accept(a_shape_visitor)
      a_shape_visitor.visit_square(self)
    end

    def to_s
      '■'
    end

  end

end