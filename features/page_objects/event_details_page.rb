class EventDetailsPage < SitePrism::Page
  element :add_attachment_button, "div[text='Add Attachment']"
  element :finalize_event_button, "input[text='Finalize Event']"

  def get_event_attachments_badge_count

  end

  def get_event_attendees_badge_count

  end

  def get_meeting_url

  end


end
