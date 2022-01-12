class Api::V1::RequestsController < ApplicationController
    def index
        requests = Request.all
        render json: requests, include: [:category]
    end

    def create
        request = Request.new(request_params)
        if request.save
            render json: request, status: :accepted
        else
            render json: {errors: request.errors.full_messages}. status: :unprocessible_entity
        end
    end

    private

    def request_params
        params.require(request).permit(:name, :description, :category_id)
    end
end
