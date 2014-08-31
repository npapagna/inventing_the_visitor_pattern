module Step2

  class Shape

    def print(an_inkjet_printer)
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print(an_inkjet_printer)
      an_inkjet_printer.calibrate()
      an_inkjet_printer.feed_paper()

      an_inkjet_printer.write(self.to_s)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print(an_inkjet_printer)
      an_inkjet_printer.calibrate()
      an_inkjet_printer.feed_paper()

      an_inkjet_printer.write(self.to_s)
    end

    def to_s
      '■'
    end

  end

end