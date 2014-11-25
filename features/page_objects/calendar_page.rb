class CalendarPage < SitePrism::Page
  element :suggestion_succesfully_added, "div[text='/Suggestion (.*) was created /i']"
  element :event_succesfully_added, "div[text='/Event (.*) was created /i']"
end
