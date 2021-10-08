module Page
  class DiscoursePage < SitePrism::Page
    include SpecHelper

    element :btn_demo,      'a[href="https://try.discourse.org"]'
    elements :title_lock,   '.closed > td.main-link.clearfix > span > a'
    elements :title,        '.link-top-line > a'
    elements :bottom_line,  '.link-bottom-line'
    elements :num_views,    '.views > .number'
    element :end_footer,    '.dismiss-container-bottom'

    def wait_footer
      wait_until_end_footer_visible
    end
  end
end
