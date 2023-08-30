# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @word = { text: 'hello' }
    render json: @word
  end
end
