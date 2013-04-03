helpers do

  def get_posts
    @posts = Post.where(:category_id => @category.id)
  end

end
