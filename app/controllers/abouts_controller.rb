class AboutsController < InheritedResources::Base
  def about_params
    params.require(:about).permit
  end

  def index
    @abouts = About.all
  end

  def show
    @about = About.find(params[:id])
  end
end
