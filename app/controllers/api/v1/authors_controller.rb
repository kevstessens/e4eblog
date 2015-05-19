module Api
  module V1
    class AuthorsController < Api::V1::ApiController
      before_action :set_author, only: [:show]

      # GET /authors
      def index
        @authors = Author.all
        respond_with @authors
      end

      # GET /authors/1
      def show
        respond_with @author
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_author
          @author = Author.find(params[:id])
        end
    end
  end
end
