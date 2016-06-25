module ApplicationHelper
  def mentor_email_link
    "<a href=\"mailto:mentors@team900.org\">mentors@team900.org</a>".html_safe
  end
  def title(page_title)
    content_for(:title) { "#{page_title} - Zebracorns FRC 900" }
  end
end
