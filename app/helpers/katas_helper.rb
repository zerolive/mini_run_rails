module KatasHelper
  NO_LINK = ''

  def edit_kata_link(id)
    return link_to(' - Edit', edit_kata_path(id)) if user_signed_in?

    NO_LINK
  end
end
