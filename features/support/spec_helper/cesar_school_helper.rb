module CesarSchool
  class CesarSchoolHelper
    def action
      Action::CesarSchoolAction.new
    end

    def page
      Page::CesarSchoolPage.new
    end
  end
end

module SpecHelper
  def cesar_school
    CesarSchool::CesarSchoolHelper.new
  end
end
