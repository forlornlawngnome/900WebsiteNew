module CategoriesHelper
  def category_link(cat)
    return link_to cat.name, "?q[categories_name_eq]=#{cat.name}"
  end
end
