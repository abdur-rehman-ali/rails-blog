class BlogsController < ApplicationController
    before_action :set_blog , only: %i[show edit update destroy]
    before_action :authenticate_user!, except: [:index]


    def index 
        @blogs = Blog.all 
    end

    def show
    end

    def new 
        @blog = Blog.new
    end

    def create 
        @blog = Blog.new(blogs_params.merge({date: Time.now}))
        if @blog.save
            redirect_to blogs_path , notice: 'Blog has been deleted successfully!!!'
        else
            render :new
        end
    end

    def edit 
    end

    def update
        if @blog.update(blogs_params.merge({date: Time.now}))
            redirect_to blogs_path , notice: 'Blog has been updated successfully!!!'
        else
            render :update
        end
    end

    def destroy
        @blog.destroy
        redirect_to blogs_path
    end

    private 
    def blogs_params 
        params.require(:blog).permit(:title,:content,:author)
    end

    def set_blog
        @blog = Blog.find(params[:id])
    end

end
