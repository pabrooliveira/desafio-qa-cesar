module Action
  class CesarSchoolAction < SitePrism::Page
    include SpecHelper

    def access_blog_page
      cesar_school.page.menu_school.hover
      cesar_school.page.menu_blog.click
    end
    
    def save_title(number)
      !defined?($titles) ? $titles = [] : ''
      $titles << cesar_school.page.titles[number].text
    end

    def save_date(number)
      day = cesar_school.page.days[number].text
      month = cesar_school.page.months[number].text
      year = cesar_school.page.years[number].text
      !defined?($dates) ? $dates = [] : ''
      $dates << "#{day}/#{month}/#{year}"
    end

    def save_author(number)
      !defined?($authors) ? $authors = [] : ''
      $authors << cesar_school.page.authors[number].text
    end

    def save_address
      page.execute_script "window.scrollBy(0,10000)"
      $address = cesar_school.page.address.text
    end
  end
end
