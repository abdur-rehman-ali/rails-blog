class BlogsController < ApplicationController

    def index 
        @blogs = Blog.all 
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new 
        @blog = Blog.new
    end

    def create 
        @blog = Blog.new(blogs_params.merge({date: Time.now}))
        if @blog.save
            redirect_to blogs_path 
        else
            render :new
        end
    end

    def edit 
        @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blogs_params.merge({date: Time.now}))
            redirect_to blogs_path
        else
            render :update
        end
    end

    private 
    def blogs_params 
        params.require(:blog).permit(:title,:content,:author)
    end

end
