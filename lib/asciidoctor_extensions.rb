require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

class GlossTermInlineMacro < Extensions::InlineMacroProcessor
  use_dsl

  named :glossterm
  name_positional_attributes 'baseform', 'termtext', 'noindex'

  def process parent, target, attrs
    baseform = (attrs.key? 'baseform') ? attrs['baseform'] : nil
    termtext = (attrs.key? 'termtext') ? attrs['termtext'] : baseform
    noindex = (attrs.key? 'noindex') ? attrs['noindex'] == '1' : false
    baseformAttr = baseform != nil ? %(baseform="#{baseform}") : ""
    termtext = termtext != nil ? termtext : ""
    if noindex
      %(<glossterm #{baseformAttr}>#{termtext}</glossterm>)
    else
      %(<glossterm #{baseformAttr}>#{termtext}</glossterm><indexterm><primary>#{termtext}</primary></indexterm>)
    end
  end
end

class PersonInlineMacro < Extensions::InlineMacroProcessor
  use_dsl

  named :person
  name_positional_attributes 'personname'

  def process parent, target, attrs
    %(<person><personname>#{attrs['personname']}</personname></person>)
  end
end

Extensions.register do
  inline_macro GlossTermInlineMacro
  inline_macro PersonInlineMacro
end
