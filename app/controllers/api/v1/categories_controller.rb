module Api
  module V1
    class CategoriesController < Api::V1::ApiController
      before_action :set_category, only: [:show]

      # GET /categories
      def index
        @categories = Category.all
        respond_with @categories
      end

      # GET /categories/1
      def show
        respond_with({
                         :category => @category.as_json(:methods => [:percentage]),
                         :articles => @category.articles.as_json(:methods => [:author_details])
                     })
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

    end
  end
end