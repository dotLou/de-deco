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
    link_to email, 'mailto:'+email
  end
  def link_home(language)
    case language.downcase
      when "english"
        link_to " Home", home_path, class: "glyphicon glyphicon-home"
      else
        link_to " Accueil", root_path, class: "glyphicon glyphicon-home"
    end
  end
  def link_prices(language)
    case language.downcase
      when "english"
        link_to " Prices", prices_path, class: "glyphicon glyphicon-briefcase"
      else
        link_to " Prix", prix_path, class: "glyphicon glyphicon-briefcase"
    end
  end
  def link_contact(language)
    case language.downcase
      when "english"
        link_to " Contact Us", contact_path, class: "glyphicon glyphicon-phone"
      else
        link_to " Contactez Nous", contactez_path, class: "glyphicon glyphicon-phone"
    end
  end
  def link_language(language)
    current_path = request.path
    case language.downcase
      when "english"
        case current_path.downcase
          when prices_path
            link_to " Fran\u00e7ais", prix_path+"?lang=f", class: "glyphicon glyphicon-globe"
          when contact_path
            link_to " Fran\u00e7ais", contactez_path+"?lang=f", class: "glyphicon glyphicon-globe"
          else
            link_to " Fran\u00e7ais", accueil_path+"?lang=f", class: "glyphicon glyphicon-globe"
        end
      else
        case current_path.downcase
          when prix_path
            link_to " English", prices_path+"?lang=e", class: "glyphicon glyphicon-globe"
          when contactez_path
            link_to " English", contact_path+"?lang=e", class: "glyphicon glyphicon-globe"
          else
            link_to " English", home_path+"?lang=e", class: "glyphicon glyphicon-globe"
        end
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
  def set_language(language)
    case language.downcase
      when "english"
        cookies.permanent[:language] = "english"
      else
        cookies.permanent[:language] = "french"
    end
  end
  def swap_language(current_language)
    case current_language.downcase
      when "english"
        set_language("french")
      else
        set_language("english")
    end
  end
end
