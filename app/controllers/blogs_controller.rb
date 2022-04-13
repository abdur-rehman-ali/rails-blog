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
        @blog = Blog.new(
            title: params[:blog][:title],
            content: params[:blog][:content],
            author: params[:blog][:author],
            date:Time.now,
        )
        if @blog.save
            redirect_to blogs_path 
        else
            render :new
        end
    end
end
