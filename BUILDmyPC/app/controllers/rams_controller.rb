class RamsController < InheritedResources::Base



  private

    def ram_params
      params.require(:ram).permit(:name, :ram_type, :manufacturer, :description, :picture, :price)
    end

end

