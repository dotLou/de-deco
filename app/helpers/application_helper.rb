module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "De-deco Pave Uni - Interlock"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  def phone_contact
    phone_number = "613-883-4905"
    phone_number
  end
  def email_contact
    email = "de_deco@hotmail.ca"
    email
  end
end
