get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:category_id' do
  @category = Category.find(params[:category_id])
  erb :category
end

get '/post/new' do
  erb :new_post
end

post '/post/new' do
  @post = Post.create(:title=>params[:title], 
                      :description => params[:description],
                      :price =>params[:price],
                      :category_id => params[:category_id])
  
  erb :post_edit_permission
  # redirect "/post/#{@post.id}"
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end

get '/post/:id/edit/:access_key' do
  @post = Post.find(params[:id])
  
  erb :edit_post  
end

post '/post/:id/edit/:access_key' do
  @post = Post.find(params[:id])
  if params[:submit] == 'Update!'
  # if @post.access_key == params[:access_key]
    @post.update_attributes(:category_id => params[:category_id],
                            :title       => params[:title],
                            :description => params[:description],
                            :price       => params[:price])
    erb :post
  elsif params[:submit] == 'Delete!'
    Post.destroy(@post.id)
    redirect '/'
  else
    redirect '/'
  end
end
