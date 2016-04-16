module ApplicationHelper
  def auth_token
    <<-HTML.html_safe
      <input
        type="hidden"
        name="authenticity_token"
        value="#{form_authenticity_token}">
    HTML
  end

  def image_url(name)
    return unless @static_page
    @static_page.file_attachments.where(name: name.to_s)
  end
end
