module ApplicationHelper

  def authorized?(task)
    current_user.id == task.user_id
  end
  

  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }

    messages
  end
end
