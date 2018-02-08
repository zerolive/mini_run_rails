module KatasHelper
  NO_LINK = ''

  def edit_kata_link(id)
    link = link_to(' - Edit', edit_kata_path(id))
    return link if admin_signed_in?

    NO_LINK
  end
end
