module ApplicationHelper
  
  def page_title
    title = "Booker"
    title = @page_title + " | " + title if @page_title
  end
end
