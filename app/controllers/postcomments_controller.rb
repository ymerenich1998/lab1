class PostcommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		params[:postcomment][:post_id] = params[:post_id]
		params[:postcomment][:user_id] = current_user.id
		Postcomment.create(postcomments_params)
		redirect_to post_path(params[:post_id])
	end

private

	def postcomments_params
		params.require(:postcomment).permit(:user_id, :post_id, :text)
	end

end
