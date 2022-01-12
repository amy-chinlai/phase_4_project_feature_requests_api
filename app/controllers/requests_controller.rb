class RequestsController < ApplicationController
    def index
        requests = Request.all
        render json: requests, include: [:name, :description, :category]
    end
end
