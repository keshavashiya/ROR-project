class CabinetsController < InheritedResources::Base



  private

    def cabinet_params
      params.require(:cabinet).permit(:name, :cabinet_type, :manufacturer, :description, :picture, :price)
    end

end

