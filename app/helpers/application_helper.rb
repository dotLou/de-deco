module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title, language)
    case language.downcase
      when "english"
        base_title = "D\u00e9-D\u00e9co Interlock"
      else
        base_title = "D\u00e9-D\u00e9co Pav\u00e9 Uni"
    end
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
  def link_home(language)
    case language.downcase
      when "english"
        link_to "Home", home_path
      else
        link_to "Accueil", root_path
    end
  end
  def link_prices(language)
    case language.downcase
      when "english"
        link_to "Prices", prices_path
      else
        link_to "Prix", prix_path
    end
  end
  def link_contact(language)
    case language.downcase
      when "english"
        link_to "Contact Us", contact_path
      else
        link_to "Contactez Nous", contactez_path
    end
  end
  def language_link(language)
    case language.downcase
      when "english"
        link_to "Version fran\u00e7aise", accueil_path
      else
        link_to "English Version", home_path
    end
  end
  def logo_image(language)
    case language.downcase
      when "english"
        link_to image_tag("logo.png",alt: "D\u00e9-d\u00e9co Pav\00e9 Interlock"), home_path,id: "logo"
      else
        link_to image_tag("logo.png",alt: "D\u00e9-d\u00e9co Pav\00e9 Uni"), root_path,id:"logo"
    end
  end
end
