module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
  def tarea_terminada_atrasada(fecha,fecha_real)
    if fecha < fecha_real
      return "alert-danger"
    end
    return "alert-success"
  end
  def tarea_atrasada(fecha)
    if fecha == Date.today
      return "alert-warning"
    elsif fecha < Date.today
      return "alert-danger"
    end
    return "alert-info"
  end
  def avatar_for(user,cl,id)
    if !user.avatar?
      # image_tag user.avatar.default_url, id:cl, class:cl
      image_tag "default/default-avatar.png", id:id, class:cl, width: '100%', height: '100%'
      # elsif
      #  image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
    else
      p user.avatar
      image_tag user.avatar.url(:avatar), class: cl,id:id
    end
  end
  def avatar_menu(user,cl)
    if !user.avatar?
      # image_tag user.avatar.default_url, id:cl, class:cl
      image_tag "default/default-avatar.png", class:cl, width: '100%', height: '100%'
      # elsif
      #  image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
    else
      p user.avatar
      image_tag user.avatar.url(:avatar_sizemenu), class: cl, style: 'height: 50px; width:50px;'
    end
  end
end
