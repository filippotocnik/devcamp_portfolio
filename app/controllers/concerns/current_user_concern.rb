module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # nil object patern.. prečekiraš kater object je on se po tem odločš
    # v katero smer gremo naprej
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: 'Guest User', first_name: 'Guest',
                   last_name: 'User', email: 'guest@test.com')
  end

end