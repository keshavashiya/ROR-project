class MotherboardsController < InheritedResources::Base



  private

    def motherboard_params
      params.require(:motherboard).permit(:name, :motherboard_type, :manufacturer, :description, :picture, :price)
    end

end

