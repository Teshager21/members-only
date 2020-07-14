module PostsHelper
  def poster(post)
    content_tag(:p, "created by: #{post.user.name}") if post.user && signed_in?
  end
end
