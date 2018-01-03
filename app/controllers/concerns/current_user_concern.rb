module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # nil object patern.. prečekiraš kater object je on se po tem odločš
    # v katero smer gremo naprej
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end

end