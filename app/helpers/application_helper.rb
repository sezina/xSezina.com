module ApplicationHelper
  def markdown(text)
    options = {
      :autolink => true,
      :space_after_headers => true,
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :hard_wrap => true,
      :strikethrough => true,
      :gh_blockcode => true
    }

    markdown = Redcarpet::Markdown.new(HTMLwithCodeRay, options)
    markdown.render(h(text)).html_safe
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width => 2)
    end
  end
=begin
  def markdown(text)
    options = {
      :autolink => true,
      :space_after_headers => true,
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :hard_wrap => true,
      :strikethrough => true,
      :gh_blockcode => true
    }
    #options = [:hard_wrap, :filter_html, :auotlink, :no_intra_emphasis, :fenced_code, :gh_blockcode]
    syntax_highlighter(Redcarpet::Markdown.new(text, options).to_html).html_safe
  end

  def syntax_highlighter(html)
    doc = Nokogiri::HTML(html)
    doc.search("//pre[@lang]").each do |pre|
      pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
    end
    doc.to_s
  end
=end
end
