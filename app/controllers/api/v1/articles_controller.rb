module Api
  module V1
    class ArticlesController < Api::V1::ApiController
      before_action :set_article, only: [:show]

      # GET /articles
      def index
        @articles = Article.all
        respond_with({
                         :articles => @articles.as_json(:methods => [:author_details, :category_details])
                     })
      end

      # GET /articles/1
      def show
        respond_with({
                         :article => @article.as_json(:methods => [:author_details, :category_details])
                     })
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_article
          @article = Article.find(params[:id])
        end
    end
  end
end
