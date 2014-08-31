require '../step_5/shape_visitor'

module Step10

  class InkjetShapePrinter < ShapeVisitor

    def initialize(a_printer)
      @printer = a_printer
      prepare_printer()
    end

    def prepare_printer
      @printer.calibrate()
      @printer.feed_paper()
    end

    def visit_triangle(a_triangle)
      @printer.write(a_triangle)
    end

    def visit_square(a_square)
      @printer.write(a_square)
    end


  end

  class LaserShapePrinter < ShapeVisitor

    def initialize(a_printer)
      @printer = a_printer
      prepare_printer()
    end

    def prepare_printer
      @printer.prepare_laser_stuff()
    end

    def visit_triangle(a_triangle)
      @printer.output(a_triangle)
    end

    def visit_square(a_square)
      @printer.output(a_square)
    end


  end

end