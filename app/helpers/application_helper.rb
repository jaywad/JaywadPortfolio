module ApplicationHelper
  def login_helper style = ""
    if !current_user.is_a?(GuestUser)
     link_to "Logout", destroy_user_session_path, method: :delete, class: style
    else
     (link_to "Register", new_user_registration_path, class: style) +
     " ".html_safe +
     (link_to "Login", new_user_session_path, class: style)
    end
  end

  def source_helper(layout_name)
    if session[:source]
       greeting = "Thanks for visiting us from  #{session[:source]} and you are on the #{layout_name} layout" 
       content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    CopyrightTool::Renderer.copyright "Jamal AWAD", "All rights reserved."
  end

  def navbar_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: blogs_path,
        title: "Blog"
      },
      {
        url: portfolios_path,
        title: "Portfolio"
      },
      {
        url: tech_news_path,
        title: "Tech News"
      },
      {
        url: about_me_path,
        title: "About Me"
      },
      {
        url: contact_path,
        title: "Contact"
      }
    ]
  end

  def navbar_helper style = "", tag_type = ""
    navbar_links = ""

    navbar_items.each do |nav_item|
      navbar_links << "<#{tag_type}><a href='#{nav_item[:url]}' class='#{style} #{active? nav_item[:url]}'>#{nav_item[:title]}</a></#{tag_type}>"
    end

    navbar_links.html_safe +
    login_helper(style)
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Jamal's Portfolio")
  end
end