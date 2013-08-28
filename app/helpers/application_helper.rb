module ApplicationHelper
  def link_to_add_choices(name, f, association,id)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s, :f => builder)
    end
    link_to_function(name, "add_choices(this, \"#{association}\", \"#{escape_javascript(fields)}\")",:class => id)
  end

  def link_to_add_question(name, f, association,id)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s, :f => builder)
    end
    link_to_function(name, "add_question(this, \"#{association}\", \"#{escape_javascript(fields)}\")",:id => id)
  end
end
