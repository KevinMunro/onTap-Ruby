class AddNewEventPage < SitePrism::Page
#  element :suggestion_title_field, "#suggestion_suggestion_title"
#  element :suggestion_description_field, "#suggestion_suggestion_description"
#  element :create_suggestion, "input.btn.btn-primary"

  element :event_style_dropdown, "select#event_event_style"
  element :event_title_field, "input#event_title"
  element :event_description_field, "input#event_description"
  element :add_host_button, "button#add-event-host"
  element :add_host_dropdown, "select#event_hosts"
  element :event_url_field, "input#event_url"
  element :event_host_field, "input#event_host"
  element :add_gotomeeting_checkbox, "label[for=event_has_GoToMeeting]"
  element :meeting_url_field, "input#event_go_to_meeting_url"
  element :meeting_phone_field, "input#event_meeting_phone_number"
  element :meeting_access_code_field, "input#event_access_code"
  element :event_date_tool, "input#datepicker"
  element :event_start_time_tool, "label[for=event_event_time] ~ select"
  element :event_end_time_tool, "label[for=event_end_time] ~ select"
  element :restricted_checkbox, "label[for=event_restricted]"
  element :submit_button, "input.btn.btn-primary[type=submit]"

  def select_event_style(style)
  end
  def set_event_title(title)
  end
  def set_event_description(description)
  end
  def click_add_host_button()
  end
  def select_event_host(host_name)
  end
  def set_event_url_field(url)
  end
  def set_event_host_field(host)
  end
  def click_gotomeeting_checkbox()
  end
  def set_meeting_url_field(url)
  end
  def set_meeting_phone_field(number)
  end
  def set_meeting_access_code(code)
  end
  def set_date(date)
  end
  def set_start_time(start_time)
  end
  def set_end_time(end_time)
  end
  def click_restricted_checkbox()
  end
  def click_submit_button()
  end

end
