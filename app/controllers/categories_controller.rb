class CategoriesController < InheritedResources::Base
  def category_params
    params.require(:category).permit(:name, :product_id, :service_id, :description)
  end

  def show
    @category = Category.find(params[:id])
  end
end
