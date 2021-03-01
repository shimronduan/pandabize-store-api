module Api
    module V1
        class OrderController < ApplicationController
            def index
                orders = Order.all
                orders_serializer = parse_json orders
                render json: {status:'SUCCESS', message:'loaded', data:orders_serializer},status: :ok
            end

            def show
                order = Order.find(params[:id])
                orders_serializer = parse_json order
                render json: {status:'SUCCESS', message:'loaded', data:orders_serializer},status: :ok
            end

            def create
                order = Order.create(customer: permit_params[:customer])
                permit_params[:options].each do |o|
                    Customization.create(order_id: order.id, option_id:o)
                end
                render json: {status:'SUCCESS', message:'loaded', data:order},status: :ok 
            end

            def destroy
                order = Order.find(params[:id])
                order.destroy
                render json: {status:'SUCCESS', message:'deleted', data:order},status: :ok 
            end

            def update
                order = Order.find(params[:id])
                if order.update_attributes(permit_params)
                    render json: {status:'SUCCESS', message:'Updated', data:color},status: :ok 
                else
                    render json: {status:'ERROR', message:'NOT Updated', data:color.errors},status: :unprocessable_entity 
                end
            end

            private

            def permit_params
                params.permit(:customer, :options => [])
            end

        end
    end
end