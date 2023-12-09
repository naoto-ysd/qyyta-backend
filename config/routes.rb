Rails.application.routes.draw do
  post '/api/blog_bodies', to: 'blog_bodies#create'
end
