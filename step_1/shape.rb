module Step1

  class Shape

    def print
      fail 'subclass responsibility'
    end

  end

  class Triangle < Shape

    def print
      printer = InkjetPrinter.new
      printer.calibrate()
      printer.feed_paper()

      printer.write(self.to_s)
    end

    def to_s
      '▲'
    end

  end

  class Square < Shape

    def print
      printer = InkjetPrinter.new
      printer.calibrate()
      printer.feed_paper()

      printer.write(self.to_s)
    end

    def to_s
      '■'
    end

  end

end