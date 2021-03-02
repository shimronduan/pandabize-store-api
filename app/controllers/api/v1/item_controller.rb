module Api
    module V1
        class ItemController < ApplicationController
            def index
                items = Item.all
                items_serializer = parse_json items
                render json: {status:'SUCCESS', message:'loaded', data:items_serializer},status: :ok
            end

            def show
                item = Item.find(params[:id])
                items_serializer = parse_json item
                render json: {status:'SUCCESS', message:'loaded', data:items_serializer},status: :ok
            end

            def create
                item = Item.new(permit_params)

                if item.save
                    items_serializer = parse_json item
                    render json: {status:'SUCCESS', message:'loaded', data:items_serializer},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT SAVE', data:item.errors},status: :unprocessable_entity 
                end
            end

            def destroy
                item = Item.find(params[:id])
                item.destroy
                render json: {status:'SUCCESS', message:'deleted', data:item},status: :ok 
            end

            def update
                item = Item.find(params[:id])
                item.Name = permit_params[:Name]
                if item.save
                    render json: {status:'SUCCESS', message:'Updated', data:item},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT Updated', data:item.errors},status: :unprocessable_entity 
                end
            end

            private

            def permit_params
                params.permit(:Name, :bicycle_id)
            end

        end
    end
end