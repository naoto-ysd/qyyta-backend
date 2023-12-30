Rails.application.routes.draw do
  post '/api/blog_posts', to: 'blog_bodies#create'
end
