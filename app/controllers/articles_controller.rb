class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end
	def create
		@article = Article.new(article_params)
		
		@article.save
		redirect_to @article
	end
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end
	def show
		@article = Article.find(params[:id])
	end
	def edit
		@article = Article.find(params[:id])
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		
		redirect_to articles_path
	end
	def index
		@articles = Article.all
	end
	def view_audit_trail
		@audit_trail=Array.new
		@articles = Article.all
		@articles.each do |article|
			article.audits.each do |audit|
				@audit_trail.insert(0,audit)
			end
		end
		@audit_trail=@audit_trail.sort_by &:created_at
		render :action => "audit"
	end
	private
		def article_params
			params.require(:article).permit(:name1, :name2, :name3, :address1, :address2, :address3, :address4, :address5, :dob, :start)
		end
end
