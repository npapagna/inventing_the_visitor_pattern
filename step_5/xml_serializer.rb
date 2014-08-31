module Step10

  class XmlSerializer

    def initialize
      @buffer = []
    end

    def start_tag(a_tag_name)
      open_tag = '<' + a_tag_name + '>'
      @buffer << open_tag
    end

    def text(a_text)
      @buffer << a_text
    end

    def end_tag(a_tag_name)
      closed_tag = '</' + a_tag_name + '>'
      @buffer << closed_tag
    end

    def xml
      @buffer.join
    end

  end

end