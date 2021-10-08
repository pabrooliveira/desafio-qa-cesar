module Common
  class CommonHelper
    def action
      Action::CommonAction.new
    end
  end
end

module SpecHelper
  def common
    Common::CommonHelper.new
  end
end
