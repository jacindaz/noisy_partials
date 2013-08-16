#NOTE: The following will only work in Rails 3.0.x. Rails 3.1 has
# its render method in a different place with a 
# different method signature.
class ActionView::Partials::PartialRenderer
  alias_method :_render_original, :render

  def render
    partial = ((@template = find_template) ? @template.identifier : @path)
    if partial.match(/\.rhtml$|\.erb$|\.haml$|\.html$|\.htm$/)
      start_explanation = "\n<!-- BEGIN #{partial} -->\n".html_safe
      end_explanation = "\n<!-- END #{partial} -->\n".html_safe
      (start_explanation + _render_original().to_s + end_explanation)
    else
      _render_original()
    end
  end
end
