module Api
    module V1
        class BicycleController < ApplicationController
            def index
                bicycles = Bicycle.includes(:items);
                bicycles_serializer = parse_json bicycles
                render json: {status:'SUCCESS', message:'loaded', data:bicycles_serializer},status: :ok
            end

            def show
                bicycle = Bicycle.find(params[:id])
                bicycles_serializer = parse_json bicycle
                render json: {status:'SUCCESS', message:'loaded', data:bicycles_serializer},status: :ok
            end

            def create
                bicycle = Bicycle.new(bicycle_params)

                if bicycle.save
                    bicycles_serializer = parse_json bicycle
                    render json: {status:'SUCCESS', message:'loaded', data:bicycle},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT SAVE', data:bicycle.errors},status: :unprocessable_entity 
                end
            end

            def destroy
                bicycle = Bicycle.find(params[:id])
                bicycle.destroy
                render json: {status:'SUCCESS', message:'deleted', data:bicycle},status: :ok 
            end

            def update
                bicycle = Bicycle.find(params[:id])
                if bicycle.update_attributes(bicycle_params)
                    bicycles_serializer = parse_json bicycle
                    render json: {status:'SUCCESS', message:'Updated', data:bicycle},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT Updated', data:bicycle.errors},status: :unprocessable_entity 
                end
            end

            private

            def bicycle_params
                params.permit(:name)
            end

        end
    end
end