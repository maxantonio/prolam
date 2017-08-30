module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
  def avatar_for(user,cl,tipo)
    if !user.avatar?
      # image_tag user.avatar.default_url, id:cl, class:cl
      image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
      # elsif
      #  image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
    else
      p user.avatar
      image_tag user.avatar.url(:avatar), class: cl,id:cl
    end
  end
  def avatar_menu(user,cl,tipo)
    if !user.avatar?
      # image_tag user.avatar.default_url, id:cl, class:cl
      image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
      # elsif
      #  image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
    else
      p user.avatar
      image_tag user.avatar.url(:avatar_sizemenu), class: cl,id:cl
    end
  end
end
