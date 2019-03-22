class TemplatesController < InheritedResources::Base

  private

    def template_params
      params.require(:template).permit(:title, :content)
    end
end

