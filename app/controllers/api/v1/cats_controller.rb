module Api
  module V1
    class CatsController < ApplicationController
      def index
        render json: Cat.all
      end

      def fetch_cats
        render json: { status: true, message: 'Fetching Cat Data From API' }
        CatWorker.perform_async
      end
    end
  end
end
