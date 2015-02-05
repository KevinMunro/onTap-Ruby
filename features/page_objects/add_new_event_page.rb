class AddNewEventPage < SitePrism::Page
#  element :suggestion_title_field, "#suggestion_suggestion_title"
#  element :suggestion_description_field, "#suggestion_suggestion_description"
#  element :create_suggestion, "input.btn.btn-primary"

  include DataGenerator

  element :event_style_dropdown, "select#event_event_style"
  element :event_title_field, "input#event_title"
  element :event_description_field, "input#event_description"
  element :add_host_button, "ul.chosen-choices"
  element :add_host_dropdown, "ul.chosen-results"
  element :event_url_field, "input#event_url"
  element :event_host_field, "input#event_host"
  element :add_gotomeeting_checkbox, "label[for=event_has_GoToMeeting]"
  element :meeting_url_field, "input#event_go_to_meeting_url"
  element :meeting_phone_field, "input#event_meeting_phone_number"
  element :meeting_access_code_field, "input#event_access_code"
  element :event_date_tool, "input.daydate"
  element :event_start_time_label, "label[for=event_schedules_attributes_0_start]"
  element :event_end_time_label, "label[for=event_schedules_attributes_0_end]"
  element :restricted_checkbox, "label[for=event_restricted]"
  element :submit_button, "input.btn.btn-primary[type=submit]"
  element :update_button, "a[href='#sendEmail']"

  def fill_new_event_form(data_hsh)
    ret_val=""
    hash = { }
    data_hsh.each do |key, value|
      if value == 'Click'
        send(key)
      else
        ret_val=send(key, value)
        hash[key]=ret_val
      end
    end
    return hash
  end

  def select_event_style(style)
    if style == 'Generate'
      style=DataGenerator.generate_event_style
    end
    event_style_dropdown.select(style)
    return style
  end

  def set_event_title(title)
    if title == 'Generate'
      title=DataGenerator.generate_event_title
    end
    event_title_field.set(title)
    return title
  end

  def set_event_description(description)
    if description == 'Generate'
      description=DataGenerator.generate_event_description
    end
    event_description_field.set(description)
    return description
  end

  def click_add_host_button()
    add_host_button.click()
  end

  def select_event_host(host_name)
    add_host_button.click()
    add_host_dropdown.find("li.active-result", :text => host_name).click()
    return host_name
  end

  def set_event_url_field(url)
    if url == 'Generate'
      url=DataGenerator.generate_event_webinar_url
    end
    event_url_field.set(url)
    return url
  end

  def set_event_host_field(host)
    if host == 'Generate'
      host=DataGenerator.generate_event_webinar_host
    end
    event_host_field.set(host)
    return host
  end

  def click_gotomeeting_checkbox()
    add_gotomeeting_checkbox.click()
  end

  def set_meeting_url_field(url)
    if url == 'Generate'
      url=DataGenerator.generate_event_gtm_url
    end
    meeting_url_field.set(url)
    return url
  end

  def set_meeting_phone_field(number)
    if number == 'Generate'
      number=DataGenerator.generate_event_gtm_phone_number
    end
    meeting_phone_field.set(number)
    return number
  end

  def set_meeting_access_code(code)
    if code == 'Generate'
      code=DataGenerator.generate_event_gtm_access_code
    end
    meeting_access_code_field.set(code)
    return code
  end

  def set_date(date)
    if date == 'Generate'
      date=DataGenerator.generate_event_date
    end
    event_date_tool.set(date)
    return date
  end

  def set_start_time(start_time)   
    if start_time == 'Generate'
      start_time=DataGenerator.generate_event_start_time
    end
    event_start_time_label.first(:xpath,".//..").find("select.ui-timepicker-select").select(start_time)
    return start_time
  end

  def set_end_time(end_time)
    if end_time == 'Generate'
      end_time=DataGenerator.generate_event_end_time
    end
    event_end_time_label.first(:xpath,".//..").find("select.ui-timepicker-select").select(end_time)
    return end_time
  end

  def click_restricted_checkbox()
    restricted_checkbox.click()
  end

  def click_submit_button()
    submit_button.click()
  end

  def click_update_button()
    update_button.click()
  end

end
