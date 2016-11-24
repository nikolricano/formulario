class Post1sController < ApplicationController
  before_action :set_post_1, only: [:show, :edit, :update, :destroy]

  # GET /post_1s
  # GET /post_1s.json
  def index
    @post_1s = Post1.all
  end

  # GET /post_1s/1
  # GET /post_1s/1.json
  def show
  end

  # GET /post_1s/new
  def new
    @post_1 = Post1.new
  end

  # GET /post_1s/1/edit
  def edit
  end

  # POST /post_1s
  # POST /post_1s.json
  def create
    @post_1 = Post1.new(post_1_params)

    respond_to do |format|
      if @post_1.save
        format.html { redirect_to @post_1, notice: 'Post 1 was successfully created.' }
        format.json { render :show, status: :created, location: @post_1 }
      else
        format.html { render :new }
        format.json { render json: @post_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_1s/1
  # PATCH/PUT /post_1s/1.json
  def update
    respond_to do |format|
      if @post_1.update(post_1_params)
        format.html { redirect_to @post_1, notice: 'Post 1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_1 }
      else
        format.html { render :edit }
        format.json { render json: @post_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_1s/1
  # DELETE /post_1s/1.json
  def destroy
    @post_1.destroy
    respond_to do |format|
      format.html { redirect_to post_1s_url, notice: 'Post 1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_1
      @post_1 = Post1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_1_params
      params.require(:post_1).permit(:title, :content, :age)
    end
end
