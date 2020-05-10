class ArticlesController < ApplicationController
    def preview
      @sintax = view_context.toc(params[:body])
      @html = view_context.markdown(params[:body])
    end
end
