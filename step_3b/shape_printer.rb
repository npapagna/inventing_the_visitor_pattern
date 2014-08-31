module Step6

  class ShapePrinter

    def initialize(a_printer)
      @printer = a_printer
    end


    def print_triangle(a_triangle)
      if @printer.instance_of?(InkjetPrinter)
        print_triangle_with_inkjet_printer(@printer, a_triangle)
      else
        print_triangle_with_laser_printer(@printer, a_triangle)
      end
    end

    def print_triangle_with_inkjet_printer(a_printer, a_triangle)
      a_printer.calibrate()
      a_printer.feed_paper()

      a_printer.write(a_triangle.to_s)
    end

    def print_triangle_with_laser_printer(a_printer, a_triangle)
      a_printer.prepare_laser_stuff()

      a_printer.output(a_triangle.to_s)
    end


    def print_square(a_square)
      if @printer.instance_of?(InkjetPrinter)
        print_square_with_inkjet_printer(@printer, a_square)
      else
        print_square_with_laser_printer(@printer, a_square)
      end
    end

    def print_square_with_inkjet_printer(a_printer, a_square)
      a_printer.calibrate()
      a_printer.feed_paper()

      a_printer.write(a_square.to_s)
    end

    def print_square_with_laser_printer(a_printer, a_square)
      a_printer.prepare_laser_stuff()

      a_printer.output(a_square.to_s)
    end

  end

end