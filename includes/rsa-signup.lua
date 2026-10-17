-- Rsquared site-kit v1.2.0: email sign-up card at the end of every HTML page.
-- rsa-signup.js (loaded in includes/site-kit-head.html) renders the card.
function Pandoc(doc)
  if quarto.doc.is_format("html:js") then
    doc.blocks:insert(pandoc.RawBlock("html",
      '<div data-rsa-signup data-site="viz-ggplot2.rsquaredacademy.com" data-privacy-url="https://www.rsquaredacademy.com/privacy-policy.html"></div>'))
  end
  return doc
end
