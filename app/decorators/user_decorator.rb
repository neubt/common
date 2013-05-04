class UserDecorator < Draper::Decorator

  delegate_all

  include Draper::LazyHelpers

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       source.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def avatar(size = nil)
    if provider == 'neubt'
      "http://bt.neu6.edu.cn/uc_server/avatar.php?uid=#{source.uid}&size=#{size}"
    end
  end

end
