module Jekyll
  class InfoBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      contents = super
      source = '<blockquote><span class="label label-info">Info</span> '
      source += contents
      source += '</blockquote>'
      
      source
    end
  end

  class WarningBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      contents = super
      source = '<blockquote><span class="label label-warning">Warning</span> '
      source += contents
      source += '</blockquote>'

      source
    end
  end
end

Liquid::Template.register_tag('warning', Jekyll::WarningBlock)
Liquid::Template.register_tag('info', Jekyll::InfoBlock)