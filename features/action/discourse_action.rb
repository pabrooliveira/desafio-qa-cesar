module Action
  class DiscourseAction < SitePrism::Page
    include SpecHelper

    def access_demo_page
      discourse.page.btn_demo.click
      demo = page.driver.browser.window_handles.last
      page.driver.browser.switch_to.window(demo)
    end

    def scroll(position)
      case position
      when 'footer'
        page.execute_script "window.scrollBy(0,10000)"
        discourse.page.wait_footer
        page.execute_script "window.scrollBy(0,10000)"
      end
    end

    def show_closed_threads
      puts "Os titulos de tópicos fechados são: "
      discourse.page.title_lock.each { |title| 
        puts title.text
      }
    end

    def show_items
      items = discourse.page.bottom_line
      counts = Hash.new(0)
      items.each { |item| counts[item.text] += 1 }
      counts.each { |key, value| 
        key = key.gsub("\n", " ")
        category = key == '' ? "sem categoria" : "na categoria #{key}"
        puts "Temos #{value} item(ns) #{category}" 
      }
    end

    def get_greater_view
      views = []
      discourse.page.num_views.each { |key| 
        key = key.text
        key = key.gsub("k", "00")
        key = key.gsub(".", "")
        views << key.to_i
      }
      $greater_view = views.find_index(views.sort.last)
    end

    def show_title_greater_view
      titles = []
      discourse.page.title.each { |key| titles << key.text }
      puts "O titulo com mais visualização é: #{titles[$greater_view]}"
    end
  end
end
