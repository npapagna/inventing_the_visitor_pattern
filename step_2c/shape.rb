module Step4

  class Shape

    def print(a_printer)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(a_printer)
      if a_printer.instance_of?(InkjetPrinter)
        print_triangle_with_inkjet_printer(a_printer)
      else
        print_triangle_with_laser_printer(a_printer)
      end
    end

    def print_triangle_with_inkjet_printer(a_printer)
      a_printer.calibrate()
      a_printer.feed_paper()

      a_printer.write(self.to_s)
    end

    def print_triangle_with_laser_printer(a_printer)
      a_printer.prepare_laser_stuff()

      a_printer.output(self.to_s)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(a_printer)
      if a_printer.instance_of?(InkjetPrinter)
        print_square_with_inkjet_printer(a_printer)
      else
        print_square_with_laser_printer(a_printer)
      end
    end

    def print_square_with_inkjet_printer(a_printer)
      a_printer.calibrate()
      a_printer.feed_paper()

      a_printer.write(self.to_s)
    end

    def print_square_with_laser_printer(a_printer)
      a_printer.prepare_laser_stuff()

      a_printer.output(self.to_s)
    end

    def to_s
      '■'
    end

  end

end