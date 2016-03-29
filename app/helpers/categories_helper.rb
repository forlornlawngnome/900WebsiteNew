module CategoriesHelper
  def category_link(cat)
    return link_to cat.name, news_path+"?q[categories_name_eq]=#{cat.name}"
  end
end
