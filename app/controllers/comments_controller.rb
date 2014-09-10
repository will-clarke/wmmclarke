class CommentsController < ApplicationController
    def create
        @blog = Blog.find(blog_param)
        @comment = @blog.comments.create!(comment_param)
        redirect_to @blog
    end
    private
    def blog_param
        params.require('blog_id')
    end
    def comment_param
        params.require('comment').permit('body')
    end
end