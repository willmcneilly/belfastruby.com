class Admin::PostsController < AdminController
  
  def show
    redirect_to "/admin/posts"
  end
  
  def index
    @posts = Post.all(:order => "id DESC")
    
    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end
  
  def new 
    @post = Post.new
    
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_posts_url, notice: "#{@post.title } has been successfully created."  }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to admin_posts_url, notice: "#{@post.title } has been successfully updated." }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to admin_posts_path, notice: "#{@post.title } has been successfully deleted." }
      format.json { head :ok }
    end
  end

end