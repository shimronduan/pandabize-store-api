module Api
    module V1
        class OptionController < ApplicationController
            def index
                options = Option.all
                options_serializer = parse_json options
                render json: {status:'SUCCESS', message:'loaded', data:options_serializer},status: :ok
            end

            def show
                # color = Color.find(params[:id])
                option = Option.find(params[:id])
                options_serializer = parse_json options
                render json: {status:'SUCCESS', message:'loaded', data:options_serializer},status: :ok
            end

            def create
                option = Option.new(permit_params)

                if option.save
                    options_serializer = parse_json option
                    render json: {status:'SUCCESS', message:'loaded', data:options_serializer},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT SAVE', data:option.errors},status: :unprocessable_entity 
                end
            end

            def destroy
                option = Option.find(params[:id])
                option.destroy
                render json: {status:'SUCCESS', message:'deleted', data:option},status: :ok 
            end

            def update
                option = Option.find(params[:id])
                if option.update_attributes(permit_params)
                    render json: {status:'SUCCESS', message:'Updated', data:color},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT Updated', data:color.errors},status: :unprocessable_entity 
                end
            end

            private

            def permit_params
                params.permit(:Name, :item_id)
            end

        end
    end
end