class ActionView::PartialRenderer
	alias_method :_render_original, :render

  def render(context, options, block)
  	partial = options[:partial]
    start_explanation = "\n<!-- START PARTIAL #{partial} -->\n".html_safe
    end_explanation = "\n<!-- END PARTIAL #{partial} -->\n".html_safe
    (start_explanation + _render_original(context, options, block).to_s + end_explanation)
  end
end
