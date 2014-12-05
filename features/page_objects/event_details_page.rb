class EventDetailsPage < SitePrism::Page
  element :add_attachment_button, "div[text='Add Attachment']"
  element :finalize_event_button, "input[text='Finalize Event']"
  element :event_succesfully_updated, "div[text='/Event (.*) was updated /i']"

  def get_event_attachments_badge_count

  end

  def get_event_attendees_badge_count

  end

  def get_meeting_url

  end


end
