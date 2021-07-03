module Api
  module V1
    class CatsController < ApplicationController
      before_action :authenticate_user!, only: %i[create update destroy fetch_cats]
      before_action :set_cat, only: %i[show update destroy]

      def index
        search = Cat.ransack(params[:q]).result.order(created_at: :desc)
        cats = search.page(params[:page]).per(params[:per_page])
        cat_serializer = ActiveModel::Serializer::CollectionSerializer.new(
          cats, serializer: CatSerializer
        )

        render json: { data: cat_serializer, pagination: pagination(cats) }
      end

      def create
        cat = Cat.new(cat_params)

        if cat.save
          render json: {
            success: true,
            messages: 'Success, data has been created'
          }
        else
          render json: {
            success: false,
            messages: 'Error, failed to create data',
            errors: cat.errors.full_messages
          }, status: 422
        end
      end

      def show
        render json: @cat, serializer: CatSerializer
      end

      def update
        if @cat.update(cat_params)
          render json: {
            success: true,
            messages: 'Success, data has been updated'
          }
        else
          render json: {
            success: false,
            messages: 'Error, failed to update data',
            errors: @cat.errors.full_messages
          }, status: 422
        end
      end

      def destroy
        if @cat.destroy
          render json: {
            success: true,
            messages: 'Success, data has been deleted'
          }
        else
          render json: {
            success: false,
            messages: 'Error, failed to delete data',
            errors: @cat.errors.full_messages
          }, status: 422
        end
      end

      def fetch_cats
        render json: { success: true, message: 'Fetching cat data from API' }
        CatWorker.perform_async(params[:tags], params[:skip], params[:limit])
      end

      private

      def set_cat
        @cat = Cat.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: {
          success: false,
          messages: 'Data not found!'
        }, status: 404
      end

      def cat_params
        params.require(:cat)
              .permit(
                :api_id, :name, :url, :image
              )
      end
    end
  end
end
