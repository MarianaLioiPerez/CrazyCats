class ReactionsController < ApplicationController
    before_action :set_post, only: %i[show edit update destroy]
    before_action :authenticate_cfcuser!, except: [:index, :show]
  
    def new_cfcuser_reaction
      @cfcuser = current_cfcuser
      @type = params[:reaction_type]
      @post = Post.find(params[:post_id]) if params[:post_id]
      @comment = Comment.find(params[:comment_id]) if params[:comment_id]
      @kind = params[:kind]
  
      respond_to do |format|
        if @type == "comment"
          reaction_comment = Reaction.find_by(cfcuser_id: @cfcuser, comment_id: @comment.id)
          if reaction_comment
            format.html { redirect_to post_path(@post), notice: 'You already reacted to this comment.' }
          else
            @reaction = Reaction.new(cfcuser_id: @cfcuser.id, comment_id: @comment.id, reaction_type: @type, kind: @kind)
            if @reaction.save
              format.html { redirect_to post_path(@post), notice: 'Reaction to comment was successfully created.' }
            else
              format.html { redirect_to post_path(@post), notice: 'Something went wrong.' }
            end
          end
        elsif @type == "post"
          reaction_post = Reaction.find_by(cfcuser_id: @cfcuser.id, post_id: @post.id)
          if reaction_post
            format.html { redirect_to post_path(@post), notice: 'You already reacted to this post.' }
          else
            @reaction = Reaction.new(cfcuser_id: @cfcuser.id, post_id: @post.id, reaction_type: @type, kind: @kind)
            if @reaction.save
              format.html { redirect_to post_path(@post), notice: 'Reaction to post was successfully created.' }
            else
              format.html { redirect_to post_path(@post), notice: 'Something went wrong.' }
            end
          end
        end
      end
    end
  end
  