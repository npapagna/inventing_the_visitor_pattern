class InkjetPrinter

  def initialize
    @steps = []
  end

  def calibrate
    @steps << 'Calibrating'
  end

  def feed_paper
    @steps << 'Feeding paper'
  end

  def write(a_thing)
    @steps << a_thing
    @steps.join ', '
  end

end

class LaserPrinter

  def initialize
    @steps = []
  end

  def prepare_laser_stuff
    @steps << 'Preparing laser stuff'
  end

  def output(a_thing)
    @steps << a_thing
    @steps.join ', '
  end

end