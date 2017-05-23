class PagesController < ApplicationController
  def home
    @articles = Article.all.paginate(:page => params[:page], :per_page => 4).order("created_at desc")
    @projects = Project.all.paginate(:page => params[:page], :per_page => 4).order("created_at desc")
  end
end
