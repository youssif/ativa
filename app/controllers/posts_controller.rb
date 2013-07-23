class PostsController < ApplicationController

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.phase_id = Phase.find_by_name(params[:post][:phase_id]).id

    respond_to do |format|
      if @post.save
        format.html { redirect_to project_partial_path(@post.project.id, @post.phase.name, 'posts'), notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to project_partial_path(@post.project.id, @post.phase.name, 'post', post_id: @post.id), notice: 'Post was successfully updated.' }
      else
        format.html { redirect_to project_partial_path(@post.project.id, @post.phase.name, 'post', post_id: @post.id), notice: "Umm, we weren't able to update this post" }
      end
    end

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
