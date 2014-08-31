module Step3

  class Shape

    def print(an_inkjet_printer)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(an_inkjet_printer)
      if an_inkjet_printer.instance_of?(InkjetPrinter)
        an_inkjet_printer.calibrate()
        an_inkjet_printer.feed_paper()

        an_inkjet_printer.write(self.to_s)
      else
        an_inkjet_printer.prepare_laser_stuff()
        an_inkjet_printer.output(self.to_s)
      end

    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(an_inkjet_printer)
      if an_inkjet_printer.instance_of?(InkjetPrinter)
        an_inkjet_printer.calibrate()
        an_inkjet_printer.feed_paper()

        an_inkjet_printer.write(self.to_s)
      else
        an_inkjet_printer.prepare_laser_stuff()

        an_inkjet_printer.output(self.to_s)
      end
    end

    def to_s
      '■'
    end

  end

end