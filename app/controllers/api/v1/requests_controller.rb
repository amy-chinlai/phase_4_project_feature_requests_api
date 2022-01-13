class Api::V1::RequestsController < ApplicationController
    def index
        requests = Request.all
        # render json: requests, include: [:category]
        render json: RequestSerializer.new(requests)
    end

    def create
        request = Request.new(request_params)
        # byebug
        if request.save
            render json: request, include: [:category], status: :accepted
        else
            render json: {errors: request.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def request_params
        params.permit(:name, :description, :category_id)
    end

end
