class ArticlesController < ApplicationController
  class Api::ArticlesController < ApplicationController
    def preview
      # @sintax = view_context.toc(params[:body])
      @html = view_context.markdown(params[:body])

    end
  end
end
