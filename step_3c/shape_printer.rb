module Step7

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
    end


    def print_triangle(a_triangle)
      print_triangle_with_inkjet_printer(a_triangle)
    end

    def print_triangle_with_inkjet_printer(a_triangle)
      @printer.calibrate()
      @printer.feed_paper()
      @printer.write(a_triangle)
    end


    def print_square(a_square)
      print_square_with_inkjet_printer(a_square)
    end

    def print_square_with_inkjet_printer(a_square)
      @printer.calibrate()
      @printer.feed_paper()
      @printer.write(a_square)
    end

  end

  class LaserShapePrinter < ShapePrinter

    def initialize(a_printer)
      @printer = a_printer
    end


    def print_triangle(a_triangle)
      print_triangle_with_laser_printer(a_triangle)
    end

    def print_triangle_with_laser_printer(a_triangle)
      @printer.prepare_laser_stuff()
      @printer.output(a_triangle)
    end


    def print_square(a_square)
      print_square_with_laser_printer(a_square)
    end

    def print_square_with_laser_printer(a_square)
      @printer.prepare_laser_stuff()
      @printer.output(a_square)
    end

  end

end