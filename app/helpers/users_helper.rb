module UsersHelper

  def display_user_posts(user)
    if user.posts.any?
      return "User has #{user.posts.count} posts"
    else
      return "User has no posts"
    end
  end
end
