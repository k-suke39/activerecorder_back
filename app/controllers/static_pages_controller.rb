class StaticPagesController < ApplicationController
    def index
        @word = "hello"
        render json: @word
    end
end
