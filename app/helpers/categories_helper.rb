module CategoriesHelper
  def category_link(cat)
    return link_to cat.name, news_path+"?q[categories_name_eq]=#{cat.name}"
  end
  def category_link_docs(cat)
    return link_to cat.name, labs_path+"?q[category_name_eq]=#{cat.name}"
  end
end
