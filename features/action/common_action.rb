module Action
  class CommonAction < SitePrism::Page
    include SpecHelper

    def access_main_page(website)
      visit(CONFIG[website])
    end
  end
end
