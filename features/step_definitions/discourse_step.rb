When('Access the Demo page') do
  discourse.action.access_demo_page
end

When('Scroll to the bottom of the page') do
  discourse.action.scroll('footer')
end

Then('The title of all closed threads must be displayed') do
  discourse.action.show_closed_threads
end

Then('The Number of items must be displayed') do
  discourse.action.show_items
end

Then('The greater view be displayed') do
  discourse.action.get_greater_view
  discourse.action.show_title_greater_view
end