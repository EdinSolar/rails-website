module ApplicationHelper
  def render_markdown(text)
    renderer = HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::SanitizationFilter,
      HTML::Pipeline::AutolinkFilter,
      HTML::Pipeline::SyntaxHighlightFilter
    ], { gfm: true }

    filter = renderer.call(text)
    filter[:output]
  end
end
