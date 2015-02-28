module ApplicationHelper
  def render_markdown(text)
    options = {no_intra_emphasis: true, fenced_code_blocks: true,
               autolink: true, space_after_headers: true, superscript: true,
               highlight: true, footnotes: true}
    html_renderer = Redcarpet::Render::HTML.new(filter_html: true,
                                                hard_wrap: true)
    renderer = Redcarpet::Markdown.new(html_renderer, options)

    renderer.render(text).html_safe
  end
end
