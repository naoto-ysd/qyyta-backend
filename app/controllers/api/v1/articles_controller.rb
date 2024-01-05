module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all
        render json: articles
      end

      def create

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

