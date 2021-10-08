module Discourse
  class DiscourseHelper
    def action
      Action::DiscourseAction.new
    end

    def page
      Page::DiscoursePage.new
    end
  end
end

module SpecHelper
  def discourse
    Discourse::DiscourseHelper.new
  end
end
