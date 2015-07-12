require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

class GlossTermInlineMacro < Extensions::InlineMacroProcessor
  use_dsl

  named :glossterm
  name_positional_attributes 'baseform', 'termtext'

  def process parent, target, attrs
    baseform = (attrs.key? 'baseform') ? attrs['baseform'] : nil
    termtext = (attrs.key? 'termtext') ? attrs['termtext'] : baseform
    %(<glossterm #{baseform != nil ? %(baseform="#{baseform}") : ""}>#{termtext != nil ? termtext : ""}</glossterm>)
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
