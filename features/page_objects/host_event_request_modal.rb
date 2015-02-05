class HostEventRequestModal < SitePrism::Page

  element :modal_header, "h4.modal-title", :text => 'I would like to host an event'
  element :provide_details_text_area, "textarea#email_event_details"
  element :send_host_event_button, "button#send_host_button"
  element :cancel_host_event_button, "button#cancel_host_button"

  def set_provide_details_text_area(text)
    provide_details_text_area.set(text)
  end

  def click_send_host_event_button
    send_host_event_button.click()
  end

  def click_cancel_host_event_button
    cancel_host_event_button.click()
  end
end
