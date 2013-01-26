module TeamBlog
  module Admin::ApplicationHelper
    def print_error_messages resource
      return '' if resource.errors.empty?
      errors = resource.errors.full_messages.uniq
      messages = errors.map { |msg| content_tag(:li, msg) }.join
      if errors.count > 1
        sentence = I18n.t("errors.messages.not_saved.other",
                          :count => errors.count, :resource => resource.class.model_name.human)
      else
        sentence = I18n.t("errors.messages.not_saved.one")
      end

      html = <<-HTML
      <div class="alert alert-error">
        <a class="close" data-dismiss="alert"><i class="icon-remove"></i></a>
        <strong>#{sentence}</strong>
        <ul>
          #{messages}
        </ul>
      </div>
      HTML

      html.html_safe
    end

    def notice_message
      flash_messages = []
      flash.each do |type, message|
        if message
          type = :success if type == :notice
          html = <<-HTML
        <div class=\"alert fade in alert-#{type}\">
          <a class="close" data-dismiss="alert"><i class="icon-remove"></i></a>
          #{message}
        </div>
          HTML
          flash_messages << html
        end
      end
      flash_messages.join("\n").html_safe
    end
  end
end
