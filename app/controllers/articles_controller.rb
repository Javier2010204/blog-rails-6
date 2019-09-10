class ArticlesController < ApplicationController
    before_action :set_article, only:[:edit, :update, :show, :destroy]
    before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.create(article_params)
        redirect_to @article
    end

    def edit

    end

    def update
        @article.update(article_params)
        redirect_to @article
    end

    def show

    end

    def destroy
        @article.destroy
        redirect_to root_path
    end

    private
        def set_article
            @article = Article.find(params[:id])
        end

        def article_params
            params.require(:article).permit(:title, :content)
        end
end
