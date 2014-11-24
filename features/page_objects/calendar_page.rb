class CalendarPage < SitePrism::Page
  element :suggestion_succesfully_added, "div[text='/Suggestion (.*) was created /i']"
end
