module Step8

  class ShapePrinter

    def print_triangle(a_triangle)
      fail 'subclass responsibility'
    end

    def print_square(a_triangle)
      fail 'subclass responsibility'
    end

  end

  class InkjetShapePrinter < ShapePrinter

    def initialize(a_printer)
      @printer = a_printer
      prepare_printer()
    end

    def prepare_printer
      @printer.calibrate()
      @printer.feed_paper()
    end

    def print_triangle(a_triangle)
      @printer.write(a_triangle)
    end

    def print_square(a_square)
      @printer.write(a_square)
    end


  end

  class LaserShapePrinter < ShapePrinter

    def initialize(a_printer)
      @printer = a_printer
      prepare_printer()
    end

    def prepare_printer
      @printer.prepare_laser_stuff()
    end

    def print_triangle(a_triangle)
      @printer.output(a_triangle)
    end


    def print_square(a_square)
      @printer.output(a_square)
    end


  end

end