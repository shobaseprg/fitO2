class PreviewsController < ApplicationController
  def index
    binding.pry
      @html = params[:content]
    # @html = view_context.markdown(params[:content])
    respond_to do |format|
      format.json
    end
  end
end

