module Page
  class CesarSchoolPage < SitePrism::Page
    include SpecHelper

    element :menu_school,  '#menu-item-15376'
    element :menu_blog,    '#menu-item-15254 > a'
    elements :days,       '.entry-date > .date-day'
    elements :months,       '.entry-date > .date-month'
    elements :years,       '.entry-date > .date-year'
    elements :titles,      '.entry-title > a'
    elements :authors,     '.author > a'
    element :address,     '.onde > p'
  end
end
