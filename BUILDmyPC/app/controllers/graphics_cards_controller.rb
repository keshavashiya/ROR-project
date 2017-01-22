class GraphicsCardsController < InheritedResources::Base



  private

    def graphics_card_params
      params.require(:graphics_card).permit(:name, :graphics_card_type, :manufacturer, :description, :picture, :price)
    end

end

