class Api::V1::ExecutionsController < ApplicationController
  def execute
    query = eval(URI.decode_www_form_component(params[:active_record_string]))
    render json: query
  end
end
