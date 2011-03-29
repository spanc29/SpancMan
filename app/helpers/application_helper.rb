module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(image_tag("icons/cross-circle.png",:alt => "effacer"), "remove_fields(this)")
  end


  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.simple_fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s + "/form", :f => builder)
      end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", :class => "ajout")
  end

  def submit_or_cancel(form, buto="enregistrer")
    (form.submit buto) + " ou " + link_to('abandon', 'javascript:history.go(-1);', :class => 'cancel')
  end
end

