class Api::V1::ExecutionsController < ApplicationController
  def execute
    binding.pry
    set_current_user(params[:user_id])
    current_user = @current_user
    
    query = eval(URI.decode_www_form_component(params[:active_record_string]))
    if query.is_a?(ActiveRecord::Relation)
      # queryがActiveRecord::Relation（つまり、User.allなどの結果）である場合
      query = query.map do |user|
        user.attributes.except("role")
      end
    elsif query.is_a?(User)
      # queryがUserインスタンスである場合
      query = query.attributes.except("role")
    end    
    render json: query
  rescue => e
    render json: { result: "実行できませんでした。コードが正しいか一度確認してみてください。" }
  end

  private
  
  def set_current_user(id)
    @current_user = User.find_by(id: params[:user_id])
  end
end
