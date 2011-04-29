module ApplicationHelper

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(image_tag("icons/cross-circle.png",:alt => "effacer",:title => "effacer"), "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association) #ajoute le formulaire au dessus du lien
      new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.simple_fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s + "/form", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", :class => "ajout")
  end

  def link_add_in_drop(name, f, association) # ajout le formulaire au dessus de dropzone
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.simple_fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s + "/form", :f => builder)
    end
    link_to_function(name, "add_fields(\"#DropZone\", \"#{association}\", \"#{escape_javascript(fields)}\")", :class => "ajout clique")
  end

  def submit_or_cancel(form, buton="enregistrer")
    (form.submit buton) + " ou " + link_to('abandon', 'javascript:history.go(-1);', :class => 'cancel')
  end


  def img_boolean(test ='false',tex = 'faux')
      if test
      image_tag("icons/tick-white.png", :alt => tex, :title => tex, :class =>"class")
      else
      image_tag("icons/blank.png", :alt => tex, :title => tex, :class =>"class")
      end
  end

end

