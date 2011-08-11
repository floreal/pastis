module SnippetsHelper
  def language_options
    Snippet.supported_languages.map do |lang|
      [ t(lang.to_sym, :scope => [ :supported_languages ]), lang ]
    end
  end
  
  def magnet_link
    link_to request.protocol + request.host_with_port + (url_for @snippet), @snippet
  end
end
