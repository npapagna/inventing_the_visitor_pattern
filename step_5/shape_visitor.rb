module Step10

  class ShapeVisitor

    def visit_triangle(a_triangle)
      fail 'subclass responsibility'
    end

    def visit_square(a_triangle)
      fail 'subclass responsibility'
    end

  end

end