class RequestsController < ApplicationController
    def index
        requests = Request.all
        render json: requests, include: [:category]
    end
end
