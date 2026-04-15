module ApplicationHelper
  BASE_TITLE = "Ruby on Rails Tutorial Sample App"
  def full_title(page_title = '')
    page_title.present? ? "#{page_title} | #{BASE_TITLE}" : BASE_TITLE
  end
end
