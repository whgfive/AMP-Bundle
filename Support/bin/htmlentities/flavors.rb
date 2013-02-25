class HTMLEntities
  FLAVORS            = %w[html4 xhtml1 expanded]
  MAPPINGS           = {} unless defined? MAPPINGS
  SKIP_DUP_ENCODINGS = {} unless defined? SKIP_DUP_ENCODINGS
end

HTMLEntities::FLAVORS.each do |flavor|
  require "~/Library/Application Support/TextMate/Bundles/AMPScript.tmbundle/Support/bin/htmlentities/mappings/#{flavor}"
end
