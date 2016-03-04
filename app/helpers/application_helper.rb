module ApplicationHelper
def sortable(column, title=nil, opts={})
    title ||= column.titleize
    class_name = sort_column == column ? 'hilite' : ''&& sort_direction == "asc" ? "desc" : "asc"
    direction = sort_column == column && sort_direction == "asc" ? "desc" : "asc"
    content_tag(:th, { :class => class_name }) do
     	link_to title, params.merge({ :sort => column}), opts
    end
  end
end
