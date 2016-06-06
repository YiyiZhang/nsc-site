module ApplicationHelper
  def auth_token
    <<-HTML.html_safe
      <input
        type="hidden"
        name="authenticity_token"
        value="#{form_authenticity_token}">
    HTML
  end

  def image_tag_by_name(name, opts)
    raise "No static_page set." unless @static_page

    url = @static_page.file_attachments.find_by_attachment_name(name.to_s).try(:attachment).try(:url)
    return image_tag(url, opts) if url
    return image_tag("https://placekitten.com/#{opts[:width][-1] == "%" ? opts[:width].to_i * 10 : opts[:width].to_i}/#{opts[:height].to_i}")
    nil
  end
end
