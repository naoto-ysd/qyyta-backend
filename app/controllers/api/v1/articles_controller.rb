module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all
        render json: articles
      end

      def articles_count_by_month
        # get created_at from articles table. this is because count aricles by month based on created_at.
        # Colums other than created_at are not needed.
        articles = Article.select(:created_at).where(user_id: params[:user_id])
        render json: { status: 'Success', message: 'article count', created_at: articles }, status: :ok
      end

      def create
        article = Article.new(title: params[:title], body: params[:body])
        if article.save
          render json: { status: 'Success', message: 'article saved', data: article }, status: :ok
        else
          render json: { status: 'Error', message: 'article not saved', data: article.errors }, status: :unprocessable_entity
        end
      end

      def show
        articles = {
          'title': 'Getting standard with Rails',
          'body': 'This guide  covers getting up and running with Ruby on Rails.'
        }
        render json: articles
      end

      # test method
      def merge_alternately(word1, word2)
        result = ""
        n = [word1.length, word2.length].max
        (0...n).each do |i|
          result += word1[i] if i < word1.length
          result += word2[i] if i < word2.length
        end
        result
      end
    end
  end
end

